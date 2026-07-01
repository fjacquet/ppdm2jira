# OpenAPI Reference Clients

Generated PowerShell clients used to **validate** that `PpdmClient.ps1` and `JiraClient.ps1` correctly
map fields and endpoints against the real PPDM and Jira APIs. These are a reference artifact, not part
of the shipped module — nothing here is built, imported, or depended on by `ppdm2Jira/*`.

| Client (browse in repo) | Source spec | Generator |
|---|---|---|
| `docs/swagger/generated/ppdm-v2-powershell/` | [`9765-20.1.0.json`](../9765-20.1.0.json) (PowerProtect Data Manager API **v2**) | `openapi-generator` 7.23.0, `-g powershell` |
| `docs/swagger/generated/jira-v3-powershell/` | [`jira-swagger-v3.json`](../jira-swagger-v3.json) (Jira Cloud Platform REST API **v3**) | `openapi-generator` 7.23.0, `-g powershell` |

Each folder's own `README.md` lists every generated cmdlet with links into its `docs/` folder
(per-endpoint reference, openapi-generator boilerplate). Those are excluded from this built site
(see `exclude_docs` in `mkdocs.yml`) — thousands of auto-generated pages aren't worth publishing —
but they're there to browse directly in the repository or a local clone.

## Why `openapi-generator`, not AutoRest

AutoRest was the first option considered, but it's deprecated (retired 2026-07-01) and its PowerShell
generator emits a compiled C#-based binary module requiring a .NET build — a mismatch with this repo's
plain-script-module convention (see `CLAUDE.md`). `openapi-generator`'s `powershell` target emits plain
`.ps1` functions with no compile step, and has better OpenAPI 3.1 support (both PPDM specs are 3.1.0).

## What was verified

Cross-checking the generated cmdlets/models against the hand-written code confirmed:

- **PPDM**: `9765-20.1.0.json` (v2) is the correct source for alerting — it has `/api/v2/alerts` and
  `/api/v2/external-notifications`; `9628-20.1.0.json` (v3) has no alerts endpoint at all; `9627-20.1.0.json`
  is an unrelated DPILM license spec. Every field `Normalizer.ps1`/`PpdmClient.ps1` reads (`Activity.result.
  status/error.*`, `category`, `asset`, `host`, `protectionPolicy`, `parentId`, `classType`, `Alert.
  acknowledgement.acknowledgeState`, `resource.*`, `severity`, `jobId`, `taskId`, …) exists in the spec
  with matching types and has a corresponding generated cmdlet (`MonitoringApi.ps1`) and model
  (`Activity.ps1`, `Alert.ps1`, `AlertAcknowledgement.ps1`, `EntityMessageResource.ps1`, …). `Activity`
  genuinely has no `severity` field, confirming the code's derive-from-`result.status` logic. ADR-0001's
  claim that `ExternalNotification.protocol` only enumerates `SMTP`/`SNMP` (no webhook option) checks out.
- **Jira v3**: every schema the [contract](../../design/jira-integration-contract.md) and `JiraClient.ps1`
  cite is real and has a matching generated cmdlet — `IssueUpdateDetails` → `New-Issue`, `Comment` →
  `Add-Comment`, `RemoteIssueLinkRequest`/`RemoteObject` → `New-OrUpdateRemoteIssueLink`,
  `SearchAndReconcileRequestBean` → `Search-AndReconsileIssuesUsingJqlPost`, plus `Get-CurrentUser`
  (`/myself`) and `Search-Priorities` (`/priority/search`). `SearchAndReconcileRequestBean.nextPageToken`
  confirms the contract's open item on token-based `/search/jql` pagination.
- One cosmetic, non-blocking gap: `Set-ppdm2JiraRemoteLink` only sets `title`/`url` on the remote link
  object, while the contract's example payload also sets an optional `icon` — not a spec mismatch.

## Regenerating

```bash
openapi-generator generate -i docs/swagger/9765-20.1.0.json -g powershell \
  -o docs/swagger/generated/ppdm-v2-powershell \
  --additional-properties packageName=PpdmApiReference,commonVerbs=false

openapi-generator generate -i docs/swagger/jira-swagger-v3.json -g powershell \
  -o docs/swagger/generated/jira-v3-powershell \
  --additional-properties packageName=JiraApiReference,commonVerbs=false
```
