# Jira Integration Contract

| | |
|---|---|
| Status | Draft for customer review |
| Date | 2026-06-17 |
| Source of truth | `docs/swagger/jira-swagger-v3.json` (Jira Cloud Platform REST API v3) |
| Consumed by | `JiraClient` unit (see master design spec) |

This document specifies exactly how the integration talks to Jira: auth, endpoints, payloads, deduplication, traceability, field mapping, and error handling. It is grounded in the provided v3 OpenAPI spec.

## 1. Target & auth

The provided spec is **Jira Cloud Platform REST API v3** (`/rest/api/3/...`). The `JiraClient` abstracts auth and body-format so the same logic runs against Cloud or Data Center.

| | Jira Cloud (v3, this spec) | Jira Data Center / Server (v2) |
|---|---|---|
| Base path | `/rest/api/3` | `/rest/api/2` |
| Auth | **Basic**: `email:api_token`, base64 → `Authorization: Basic …` (or OAuth2 3LO) | **PAT**: `Authorization: Bearer <token>` |
| Text fields (`description`, comment `body`) | **ADF** (Atlassian Document Format — JSON) | Wiki markup / plain string |
| Search | `POST /rest/api/3/search/jql` | `GET/POST /rest/api/2/search` |

> **Recommendation:** use a dedicated **service account + API token** (not a person's). Token is created at `id.atlassian.com`. The token is retrieved from the secret store at runtime (ADR-0006), never stored in config.

The `JiraClient` exposes one config surface: `{ baseUrl, apiVersion (3|2), authMode (basic|bearer), bodyFormat (adf|wiki) }`.

## 2. Endpoints used

| Purpose | Method & path | Request schema |
|---|---|---|
| Preflight account check | `GET /rest/api/3/myself` | — |
| Field/issue-type discovery (setup only) | `GET /rest/api/3/issue/createmeta/{projectIdOrKey}/issuetypes/{issueTypeId}` | — |
| Priority IDs (setup only) | `GET /rest/api/3/priority/search` | — |
| **Dedup search** | `POST /rest/api/3/search/jql` | `SearchAndReconcileRequestBean` `{jql, fields, maxResults}` |
| **Create issue** | `POST /rest/api/3/issue` | `IssueUpdateDetails` `{fields}` |
| **Recurrence comment** | `POST /rest/api/3/issue/{issueIdOrKey}/comment` | `Comment` `{body: ADF}` |
| **Traceability back-link** | `POST /rest/api/3/issue/{issueIdOrKey}/remotelink` | `RemoteIssueLinkRequest` |

## 3. Create issue — payload

`POST /rest/api/3/issue`. `fields` is a generic map; description **must be ADF** in v3:

```json
{
  "fields": {
    "project":   { "key": "OPS" },
    "issuetype": { "name": "Incident" },
    "summary":   "[PPDM:prod1] Backup FAILED — fileserver01 (Protect)",
    "priority":  { "id": "2" },
    "labels":    ["ppdm", "ppdm_prod1_a1b2c3d4", "source_activity", "cat_protect"],
    "components": [ { "name": "Backup Operations" } ],
    "description": {
      "type": "doc", "version": 1,
      "content": [
        { "type": "paragraph", "content": [
          { "type": "text", "text": "PPDM instance: prod1  •  Severity: CRITICAL" } ] },
        { "type": "paragraph", "content": [
          { "type": "text", "text": "Asset: fileserver01  •  Activity: 12345 (FAILED)" } ] },
        { "type": "paragraph", "content": [
          { "type": "text", "text": "Error: <result.error.detailedDescription>" } ] }
      ]
    }
  }
}
```

Response `201` → `{ "id", "key", "self" }`. The `key` (e.g. `OPS-482`) is logged for traceability.

## 4. Deduplication — JQL search (ADR-0003 realised in Jira)

The dedup key is stored as a **Jira label** because labels are JQL-searchable. **Labels cannot contain spaces or colons**, so the key `ppdm:<instanceId>:<eventId>` is sanitised to a label form: `ppdm_<instanceId>_<eventId>`.

Before creating, search for an **open** issue with that label:

```json
POST /rest/api/3/search/jql
{
  "jql": "project = OPS AND labels = \"ppdm_prod1_a1b2c3d4\" AND statusCategory != Done ORDER BY created DESC",
  "fields": ["key", "status"],
  "maxResults": 1
}
```

- `issues.length > 0` → **comment** on `issues[0].key` (recurrence) — do **not** create.
- else → **create** (§3).

> **Verification item (M0):** the enhanced `/search/jql` endpoint paginates with a **`nextPageToken`** (token-based), not `startAt`. Confirm pagination shape against current Atlassian docs; the dedup query needs only `maxResults: 1` so paging is moot here, but list operations must handle the token.

## 5. Recurrence comment — payload

`POST /rest/api/3/issue/{key}/comment` (body is ADF):

```json
{ "body": { "type": "doc", "version": 1, "content": [
  { "type": "paragraph", "content": [
    { "type": "text", "text": "Recurred at 2026-06-17T02:14:00Z (occurrence #4). lastOccurrenceTime updated in PPDM." } ] } ] } }
```

## 6. Traceability back-link — remote link

To satisfy the PRD traceability goal, attach a remote link pointing at the PPDM alert/activity. Setting `globalId` to the dedup key makes it **idempotent** (create-or-update), so re-runs don't pile up links:

```json
POST /rest/api/3/issue/{key}/remotelink
{
  "globalId": "ppdm_prod1_a1b2c3d4",
  "object": {
    "url":   "https://prod1.ppdm.example/#/administration/alerts?id=a1b2c3d4",
    "title": "PPDM prod1 — Alert a1b2c3d4",
    "icon":  { "url16x16": "https://prod1.ppdm.example/favicon.ico", "title": "PPDM" }
  }
}
```

## 7. Field mapping — Incident → Jira

| Incident field | Jira target |
|---|---|
| `severity` | `priority.id` via config map (CRITICAL→Highest/High, WARNING→Medium) |
| `title` | `summary` (truncate to 255 chars) |
| `body` (message / detailedDescription / result.error) | `description` (ADF) |
| `dedupKey` | sanitised `labels[]` entry **and** remote-link `globalId` |
| routing target | `project.key`, `components[]`, `assignee` (from `routing.psd1`, ADR-0004) |
| `source`, `category` | additional `labels[]` (`source_alert`/`source_activity`, `cat_<category>`) |
| `ppdmLinks` | description text + remote link (§6) |

## 8. Error handling & rate limits

| Condition | Handling |
|---|---|
| `201` create / `200` search | success; log `key` |
| `400` field/screen validation | field not on the project's create screen → validate at setup via `createmeta`. **As built:** a `400` (and any other unhandled `≥400`) fails the incident, which fails the whole instance run and does **not** advance its watermark — see ADR-0007. The failed window is re-read next run; dedup prevents duplicate tickets. |
| `401` / `403` | auth/permission error → fail fast with a clear message; do **not** advance watermark |
| `404` on comment/remotelink | issue deleted between search and write → fall back to create |
| `429` rate limited | respect `Retry-After` header; exponential backoff (Cloud uses cost-based limiting) |
| `5xx` | retry with backoff; if persistent, fail the run without advancing watermark (safe replay) |

> **Failure granularity (ADR-0007).** Earlier drafts said `400` should "fail the item, continue others." The shipped orchestrator instead fails the **instance** on any unhandled incident error and leaves the watermark unadvanced, because skipping an item *and* advancing the watermark would silently drop that event (violating NFR-2). Per-instance isolation still holds: other instances continue.

Constraints to enforce in `Normalizer`/`JiraClient`: `summary` ≤ 255 chars; labels contain no spaces/colons; `description`/comment bodies are valid ADF.

## 9. Setup / preflight checklist (fail fast on first run & `-DryRun`)

1. Service account exists with **Create Issues** + **Add Comments** permission on each target project.
2. API token (Cloud) / PAT (DC) registered in the secret store.
3. Target `project.key`(s), `issuetype` name, and `components` exist.
4. Priority scheme IDs resolved (`GET /priority/search`) and mapped in config.
5. `GET /myself` succeeds (auth valid); `createmeta` confirms required fields are on the create screen.

## 10. Open verification items (M0 spike)

- Confirm Jira deployment flavour: **Cloud (v3, ADF)** vs **Data Center (v2, wiki)** — drives `JiraClient` config.
- Confirm `/search/jql` pagination token shape.
- Confirm whether a dedicated **custom field** for the PPDM event ID is preferred over a label (custom field is also JQL-searchable but needs a Jira admin to create it; label needs nothing).
