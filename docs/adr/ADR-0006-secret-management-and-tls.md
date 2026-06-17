# ADR-0006 — Secret management and TLS handling

| | |
|---|---|
| Status | Accepted |
| Date | 2026-06-17 |
| Deciders | Backup Engineering, Security |
| Related | PRD §11, NFR-3, ADR-0005 |

## Context

The integration holds credentials for **each PPDM instance** and for **Jira** (Cloud API token or Data Center PAT). These must never be stored in plaintext config, committed to source control, or written to logs. The hosts may include lab/test PPDM appliances using self-signed TLS certificates.

## Decision

1. **Secrets** are retrieved at runtime from a secret provider, in this preference order:
   - **PowerShell SecretManagement** (`Microsoft.PowerShell.SecretManagement` + a vault such as `SecretStore` or an enterprise vault).
   - Environment variables (for CI / container contexts).
   - Never from plaintext files committed to the repo.
2. **Config files** reference a **secret name/handle**, never a secret value.
3. **Logs** redact tokens and Authorization headers.
4. **TLS** certificate validation is **on by default**. A self-signed opt-out exists only as an explicit, per-instance flag (`SkipCertificateCheck`) that is **logged loudly** when used, intended for lab only.
5. **Least privilege**: PPDM account is read-only (consistent with one-way sync, ADR-0005); Jira account limited to create/search/comment on the target projects.
6. Generated reference code is scanned with **Semgrep** before delivery (per repository security policy).

## Consequences

**Positive** — no credentials at rest in the repo; smaller blast radius; auditable secret access; safe-by-default TLS.

**Negative / trade-offs** — operators must provision a secret vault and register secrets before first run (documented in the runbook); the lab TLS opt-out must be governed to avoid production misuse.

## Alternatives considered

- **Plaintext credentials in config** — rejected outright (NFR-3 violation).
- **Disabling TLS validation globally** — rejected: only a narrow, explicit, logged per-instance opt-out is allowed.
