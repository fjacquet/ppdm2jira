# Changelog

All notable changes to this project are documented here. The format is based on
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.3.0] - 2026-07-01

### Added
- **Alert↔activity correlation on `jobId`.** A single failure that surfaces as **both** an alert and an
  activity now opens **one** ticket instead of two. `Merge-ppdm2JiraCorrelatedIncidents` collapses
  siblings within a run (activity-primary; the alert's dedup key is folded into the issue body for
  traceability), and a `ppdm_job_<instanceId>_<jobId>` label plus a `labels in (...)` dedup search
  handle the cross-run / watermark-straddle case. This reverses the v0.1.0 "no alert↔activity
  correlation" limitation (ADR-0003 extension).
- **Connection validators** `scripts/Test-ppdm2JiraPpdmConnection.ps1` and
  `scripts/Test-ppdm2JiraJiraConnection.ps1` — read-only smoke tests that connect and run a real search
  (PPDM filter / Jira `GET /myself` + JQL) reusing the production code paths; exit 0/1 for schedulers/CI.
- Behavioural tests for previously-untested paths: `429` + `Retry-After` (honour and give-up),
  orchestrator 404-comment→create fallback, the jobId correlation, the double-reporting single-ticket
  regression, and a Data-Center-safe remote-link payload. Suite grew 39 → 51; line coverage ~88%.

### Changed
- Confirmed the deployment target is **Jira Data Center v2** (Bearer PAT / `/rest/api/2` / wiki). The
  Jira integration contract, design spec, and `config/settings.psd1.example` now treat DC v2 as the
  primary path and Cloud v3 as the supported alternative. Documented that the OpenAPI-generated
  PowerShell clients were evaluated as a runtime and **rejected** (kept only as the spec oracle).

### Fixed
- `Set-ppdm2JiraRemoteLink` now sends `application` and `relationship`, which Jira Data Center marks as
  **required** on remote links (both optional on Cloud), avoiding a `400` on DC. Verified against the
  Atlassian Server/DC REST reference.

## [0.2.0] - 2026-06-22

### Changed
- **BREAKING:** renamed the module and all public symbols from `Ppdm2Jira` to `ppdm2Jira` — module
  `ppdm2Jira` (`ppdm2Jira.psd1` / `ppdm2Jira.psm1`), entry point `Invoke-ppdm2JiraSync`, the common
  type `ppdm2Jira.Incident`, and the secret-setup script `scripts/Set-ppdm2JiraSecrets.ps1`. Update
  any imports and call sites accordingly.

### Added
- `Start-ppdm2Jira.ps1` — repo-root launcher that imports the module and runs one sync pass,
  forwarding `-ConfigPath` / `-Instance` / `-DryRun` and returning the sync exit code.
- Release packaging: a `Release package` workflow builds, validates, and attaches
  `ppdm2Jira-<version>.zip` + `.sha256` to every published GitHub release. Documented "Install from a
  release" in the User Guide.

## [0.1.1] - 2026-06-22

### Added
- `docs/guide/quickstart.md` — progressive "dummies to black belt" tutorial (dry run → real tickets →
  routing/dedup → scheduling → operations → Data Center/internals → extending & testing). Linked from
  the README docs index.

## [0.1.0] - 2026-06-22

Initial implementation of the `ppdm2Jira` PowerShell module.

### Added
- **Orchestrator** `Invoke-ppdm2JiraSync` — per-instance loop with isolation (one instance failing
  does not stop others), `-DryRun` (no Jira writes, no watermark advance), `-Instance` filter, and a
  0/1 exit code.
- **JiraClient** — auth-abstracted for Jira Cloud (v3 / Basic / ADF) and Data Center (v2 / Bearer /
  wiki) behind one config; single mockable HTTP boundary with 429/5xx retry honouring `Retry-After`,
  and cross-version error handling (Windows PowerShell `WebException` + PowerShell 7
  `HttpResponseException`). Operations: find-open-issue, create, comment, remote-link.
- **Router** — config-driven routing (`routing.psd1`), ordered rules with a mandatory default;
  dedup-key → label sanitiser; auto-labels (`ppdm`, dedup label, `source_*`, `cat_*`).
- **Dedup** — Jira-as-source-of-truth create-vs-comment resolution.
- **StateStore** — atomic (temp + move) per-instance watermark; advance-only-on-success.
- **Normalizer** / **PpdmClient** — common `Incident` model and PPDM read wrappers, now under test;
  hardened the `PpdmBaseUrl` default to be StrictMode-safe when the PPDM-pwsh session global is unset.
- Module manifest/loader, `config/*.psd1.example` templates, and a Pester suite (39 tests) with all
  external systems mocked.
- CI (GitHub Actions: Pester + PSScriptAnalyzer on Ubuntu pwsh 7 and Windows PowerShell 5.1 / pwsh 7),
  `LICENSE` (MIT), `THIRD_PARTY_NOTICES`, README, and User Guide.
- `scripts/Set-ppdm2JiraSecrets.ps1` — interactive setup helper that derives the required secret
  names from `settings.psd1` and registers/updates them in a SecretManagement vault (SecureString,
  idempotent, `-WhatIf`/`-Force`).

### Notes
- v1 is one-way (PPDM → Jira), scheduled, for 2–5 instances. No alert↔activity correlation, no
  write-back. See the ADRs for rationale.

[Unreleased]: https://github.com/fjacquet/ppdm2jira/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/fjacquet/ppdm2jira/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/fjacquet/ppdm2jira/compare/v0.1.1...v0.2.0
[0.1.1]: https://github.com/fjacquet/ppdm2jira/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/fjacquet/ppdm2jira/releases/tag/v0.1.0
