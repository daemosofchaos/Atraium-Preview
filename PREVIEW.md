# Preview scope and expectations

Atraium is in an early public preview. The purpose is to evaluate whether people can connect their own models, shape them into useful assistants, give them controlled tools and working spaces, and complete meaningful work safely.

## What the preview is testing

The preview is intended to answer practical questions:

1. Can a new user install and launch Atraium?
2. Can they connect a compatible local, self-hosted, or cloud model?
3. Is it clear how a model profile becomes a configured assistant?
4. Do Rooms and Workspaces make sense as persistent places for assistants and projects?
5. Can users choose appropriate tools and understand their access?
6. Can an assistant track work through editable tasks, notes, files, and results?
7. Can model profiles be switched without losing the assistant and project structure?
8. Which errors or limitations prevent useful work?

## Product model

The current preview uses four related concepts:

- A **model profile** is a reusable model connection and configuration.
- An **assistant** combines a model with an identity, instructions, selected tools, and persistent context.
- A **Room** is the long-lived home for that assistant, including its base instructions, default model profile, and tool policy.
- A **Workspace** is a project desk inside the Room, with project instructions, model and tool overrides, conversation, notes, tasks, files, and generated results.

Room instructions can be a concise personality or a complete system prompt. A Workspace can inherit those instructions or use a project-specific operating brief.

## In scope

The current preview focuses on:

- Windows desktop installation and startup;
- Android sideload installation on Android 7.0 (API 24) or later;
- reusable model profiles for compatible local, self-hosted, and cloud models;
- OpenAI-compatible endpoints, Anthropic Claude, and Google Gemini routes where supported;
- assistant identity, personality, system instructions, and project-specific instructions;
- Room and Workspace model-profile overrides;
- Room and Workspace tool policies;
- more than 200 built-in tool operations across supported platforms and integrations;
- direct tools and a searchable tool gateway;
- tasks, notes, attachments, artifacts, and persistent project context;
- research, coding, document, spreadsheet, presentation, image, and selected desktop workflows;
- specialist model routes for search, memory, images, realtime interaction, speech, and transcription where configured;
- compatible MCP server integrations;
- backup and restore behaviour;
- clear, reproducible bug reports.

Actual tool and capability availability depends on the platform, enabled services, permissions, model, provider, and policy selected for a Room or Workspace.

## Not promised by this preview

The preview does not promise:

- production readiness;
- compatibility with every provider, OpenAI-style server, model, quantization, chat template, or tool-call format;
- reliable use of every available tool by every model;
- stable APIs, storage formats, or configuration schemas between preview versions;
- a security sandbox around local tools, MCP servers, or extensions;
- unattended safety for autonomous or consequential workflows;
- complete cost controls or exact provider-cost estimates;
- feature parity between Windows and Android;
- a public web, macOS, or iOS build;
- service-level guarantees or response times.

## Supported targets

| Target | Preview status |
|---|---|
| Windows desktop | Most stable and recommended preview target. |
| Android | Early sideloaded preview for Android 7.0+ arm64-v8a devices and x86_64 emulators. |
| Web | In development; no public preview. |
| macOS | In development; no public release. |
| iOS | In development; no public release. |

The Android package requests camera, microphone, foreground location, and calendar access only when the corresponding feature is invoked. Review each permission prompt before allowing it.

## Tool and extension boundaries

Atraium is a powerful local application, not a sandbox. A tool may read or modify files, run processes, interact with applications, call remote services, or expose data to a configured provider or extension.

Use Room and Workspace policy to grant only the access required for the job. Start with low-risk files and temporary projects. Treat external integrations as executable code and use only those you understand and trust.

## Data and cost responsibility

You are responsible for:

- the provider accounts, endpoints, and credentials you configure;
- all provider, infrastructure, search, embedding, image, audio, and realtime charges;
- monitoring usage, quotas, budgets, and alerts in provider dashboards;
- the prompts, files, tool results, and other content sent to configured services;
- deciding which models, tools, permissions, MCP servers, and plugins are appropriate;
- maintaining backups of important data;
- reviewing consequential operations.

Atraium does not include provider credits, enforce provider-side spending limits, control provider pricing, or issue provider refunds. Read [Token usage and provider billing](TOKEN-USAGE-AND-BILLING.md) before using paid credentials.

## Source availability

This repository contains public preview documentation and downloadable binary assets. It does not contain the Atraium application source code.

Any future public source release and its licence will be announced separately.

## Support level

Support is best-effort. A useful report can improve a future preview, but filing an issue does not create a support contract or guarantee a fix.

See [Getting started](GETTING-STARTED.md), [Support](SUPPORT.md), [Privacy](PRIVACY.md), and [Security](SECURITY.md).
