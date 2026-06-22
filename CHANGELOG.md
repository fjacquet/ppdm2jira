# Changelog

All notable changes to this project are documented here. The format is based on
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to
[Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0] - 2026-06-22

Initial implementation of the `Ppdm2Jira` PowerShell module.

### Added
- **Orchestrator** `Invoke-Ppdm2JiraSync` — per-instance loop with isolation (one instance failing
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
- `scripts/Set-Ppdm2JiraSecrets.ps1` — interactive setup helper that derives the required secret
  names from `settings.psd1` and registers/updates them in a SecretManagement vault (SecureString,
  idempotent, `-WhatIf`/`-Force`).

### Notes
- v1 is one-way (PPDM → Jira), scheduled, for 2–5 instances. No alert↔activity correlation, no
  write-back. See the ADRs for rationale.

[Unreleased]: https://github.com/fjacquet/ppdm2jira/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/fjacquet/ppdm2jira/releases/tag/v0.1.0
