# About the public preview

Atraium helps you give an assistant responsibility for practical work: complete applications, project costings, research, launch packages, documents and media. Hosted or local models use the tools you select, with conversations, notes, tasks and results kept in workspaces.

The current public release is **[0.5.0 Preview 1](https://github.com/daemosofchaos/Atraium-Preview/releases/tag/v0.5.0-preview.1)**. Read its [release notes](release-notes/v0.5.0-preview.1.md) for version-specific changes.

## Available platforms

| Platform | Availability |
|---|---|
| Windows x64 | Installer and portable archive; recommended preview experience. |
| Android | Early sideloaded preview for Android 7.0+ arm64-v8a devices and x86_64 emulators. |
| Web, macOS and iOS | No public package in this release. |

Android requests camera, microphone, foreground location and calendar permissions when their features are invoked. Desktop file, process and application actions are not available on every platform.

## What you can use

- Independent project work with a capable model and the required access: implementation, checking, repair and finished deliverables, not only planning or advice.
- Supervisor workspaces for coordinated assignments, optional nested teams, visible worker results and shared limits.
- Hosted and compatible local/self-hosted text models, with a required Chat profile and optional Utility assignment.
- Guided first-run setup and feature tours, with replay in Tutorials and guides.
- Native Anthropic Claude and Google Gemini profiles, and OpenAI-compatible connections.
- Rooms for assistant roles and workspaces for separate projects.
- Editable notes, tasks, attachments and generated document artifacts.
- Built-in tools with Direct or searchable Gateway routing and Room/Workspace access choices.
- Current web research with a separately configured Brave Search API key.
- Inline charts and comparisons, documents, spreadsheets, presentations and image generation where configured.
- Styled HTML-to-PDF reports on Windows with installed Edge or Chrome.
- Exact conversation-text exports and copies of original artifacts/attachments.
- Specialized profiles for memory, images, speech, transcription and realtime interaction where supported.
- Compatible MCP integrations and backup/restore features.

Availability depends on the installed release, device, model, provider, services and granted access. Atraium does not bundle API credits, model-server software or model weights.

Delegation remains within the same Room and cannot expand a worker's inherited tools or file-tool access. Shared request and time allowances are not currency spending caps. Interrupted assignments are not replayed automatically, and cancellation does not undo completed external actions. Read the [Supervisor guide](docs/supervisor-workspaces.md) before starting a team.

[Setup guides](docs/README.md) · [Complete-project examples](docs/use-cases.md) · [Independent assistants](docs/independent-assistants.md)

## Preview limitations

This is evaluation software, not a guarantee of production readiness or unattended safety. Keep backups and review important output.

The preview does not promise:

- compatibility with every model, OpenAI-style endpoint, quantization or tool-call format;
- reliable use of every tool by every model;
- feature parity between Windows and Android;
- unchanged settings or storage formats between preview versions;
- a security sandbox around local actions or external integrations;
- complete usage reporting, hard spending controls or exact provider-cost estimates;
- a support service-level agreement or guaranteed response time.

A model may connect successfully yet struggle with large requests, tools or specialized media. Begin with a short task and limited access.

## Your data and accounts

Atraium is local-first, not automatically offline. Models and integrations receive the content needed for their requests. A local tool's result can be included in a later remote model request.

You choose the accounts, endpoints, keys, files and integrations used, and are responsible for:

- provider and infrastructure charges, including search and media services;
- monitoring provider quotas, limits and usage;
- deciding which content may be sent to configured services;
- protecting credentials and maintaining backups;
- reviewing consequential operations and important results.

Atraium does not include credits, enforce provider budgets, control prices or issue provider refunds. Read [Billing](TOKEN-USAGE-AND-BILLING.md), [Privacy](PRIVACY.md) and [Security](SECURITY.md) before using real data or paid credentials.

## Downloads and terms

Use only the [official website](https://atraium.com) or this repository's [GitHub Releases](https://github.com/daemosofchaos/Atraium-Preview/releases), and verify the published SHA-256 manifest before installing.

The [binary preview terms](BINARY-PREVIEW-TERMS.md) permit personal evaluation and feedback. They are not an open-source licence. This repository contains preview downloads and public documentation, not the application source; any future public source release and licence will be announced separately.

## Help

Start with [Getting started](GETTING-STARTED.md) and [Troubleshooting](docs/troubleshooting.md). For reproducible problems or focused suggestions, follow [Support](SUPPORT.md). Never publish API keys, private endpoints, confidential prompts or sensitive files in an issue.
