# Architecture Decision Records

The load-bearing decisions behind Ppdm2Jira. Each ADR captures the context, the decision, and its
consequences. Cite the relevant ADR when changing its area; contradicting one is an ADR change, not a
casual edit.

| ADR | Decision |
|---|---|
| [ADR-0001](ADR-0001-polling-over-push.md) | Poll the PPDM REST API rather than rely on SMTP/SNMP push |
| [ADR-0002](ADR-0002-implementation-language-powershell.md) | Implement as a modular PowerShell module (revisit at fleet scale) |
| [ADR-0003](ADR-0003-idempotency-watermark-jira-search.md) | Idempotency via per-instance watermark + Jira-search dedup |
| [ADR-0004](ADR-0004-config-driven-routing.md) | Config-driven routing (data, not code) |
| [ADR-0005](ADR-0005-one-way-sync-v1.md) | One-way PPDM → Jira sync for v1 |
| [ADR-0006](ADR-0006-secret-management-and-tls.md) | Secrets via SecretManagement; TLS on by default |
| [ADR-0007](ADR-0007-per-incident-failure-fails-instance.md) | A per-incident failure fails the whole instance run (no watermark advance) |
