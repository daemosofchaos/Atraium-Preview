# Atraium Preview

![Atraium — assistants with tools and persistent workspaces](docs/assets/atraium-hero.svg)

**Bring your own model. Give an assistant a project—not just a question.**

Atraium gives an assistant the tools and working environment to act as an **independent worker**. Give it a brief to build an application, produce a complete project costing or prepare a research-backed launch package. With a capable model and the right access, it can make routine decisions, create files, check results, repair problems and deliver the finished work—not just describe what you should do next.

Hosted and local models connect to coding, research and document tools, with conversations, notes, tasks and deliverables kept in project workspaces. You choose the model, the responsibility and the access.

[Download](#download) · [Get started](GETTING-STARTED.md) · [Delegate a complete project](docs/independent-assistants.md) · [Connect a model](docs/model-setup.md) · [Documentation](docs/README.md) · [Official website](https://atraium.com)

## What would you delegate?

**A working application:** “Build an internal service-desk app with staff login, ticket management, a dashboard and tests. Create the project in the approved folder, build it, fix failures and include setup documentation.” [Complete application example](docs/use-cases.md#build-a-complete-application-from-a-brief).

**A complete project costing:** “Use these scope documents, quantities, labour rates and supplier prices to produce an auditable workbook, risk scenarios and a client-facing PDF. Reconcile the totals and flag missing information.” [Costing example and sample inputs](docs/use-cases.md#produce-a-complete-project-costing).

**A launch package:** “Turn this product brief into a sourced market assessment, positioning, a presentation and a launch plan. Retain editable deliverables and record the decisions.” [Launch package example](docs/use-cases.md#prepare-a-complete-launch-package).

Pair the work with a suitable model: **GPT-6 Astra**, **GPT-6.1 Sol**, **Claude Opus/Sonnet 5.5**, or a locally hostable coding model such as **KAT-Coder-V2.5-Dev**. These are options, not a promise of identical results; API mode, tool support, context and permissions matter. [Model choices and independent work](docs/independent-assistants.md#choose-a-model-for-the-responsibility).

## Why choose Atraium?

Atraium brings **model choice, reusable assistant roles, visible project records and coding/business tools into one app**. A software project can have its implementation, costing, research and client handover in separate workspaces, with different instructions and models where useful.

Codex and Claude Code also perform autonomous work. Choose Atraium when you want this integrated, multi-provider workspace experience across software and business deliverables—not because autonomy belongs to only one product. [How Atraium fits](docs/independent-assistants.md#why-choose-atraium-for-this-work).

## Download

The latest public release is **[0.4.3 Preview 3](https://github.com/daemosofchaos/Atraium-Preview/releases/tag/v0.4.3-preview.3)**. Windows is the recommended preview experience; Android is an early sideloaded preview.

| Package | Choose this when… |
|---|---|
| [Windows x64 installer](https://github.com/daemosofchaos/Atraium-Preview/releases/download/v0.4.3-preview.3/Atraium-0.4.3-preview.3-win-x64-setup.exe) | You want a normal installation for your Windows account. |
| [Windows x64 portable ZIP](https://github.com/daemosofchaos/Atraium-Preview/releases/download/v0.4.3-preview.3/Atraium-0.4.3-preview.3-win-x64-portable.zip) | You want to extract the application and run it without an installer. |
| [Android APK](https://github.com/daemosofchaos/Atraium-Preview/releases/download/v0.4.3-preview.3/Atraium-0.4.3-preview.3-android.apk) | You want to sideload on an Android 7.0+ arm64-v8a device or x86_64 emulator. |
| [Android preview ZIP](https://github.com/daemosofchaos/Atraium-Preview/releases/download/v0.4.3-preview.3/Atraium-0.4.3-preview.3-android-preview.zip) | You want the same APK with the preview, privacy, security and billing documents. |
| [SHA-256 checksums](https://github.com/daemosofchaos/Atraium-Preview/releases/download/v0.4.3-preview.3/Atraium-0.4.3-preview.3-SHA256SUMS.txt) | Verify the package before installing or running it. |

[All releases](https://github.com/daemosofchaos/Atraium-Preview/releases) · [What's new in 0.4.2](release-notes/v0.4.3-preview.3.md) · [Installation instructions](GETTING-STARTED.md#install-atraium)

> **Bring-your-own-model means bring-your-own account or server.** Atraium does not include model downloads, API keys or credits. A ChatGPT, Claude or Gemini consumer subscription is not necessarily an API account. You are responsible for provider and infrastructure charges; set provider-side spending limits before adding a paid key. See [Billing](TOKEN-USAGE-AND-BILLING.md).

## Your first assistant

1. Install Atraium and create a model profile in first-run setup.
2. Assign that profile to **Chat** and **Utility**. One text model can serve both; images, voice and web grounding can wait.
3. Create a Room for your assistant and use its Main workspace for your first task.
4. Try this request:

```text
Help me plan a four-week website refresh for a small consulting firm, with one
available developer. Save a short project brief as a workspace note and create
three next-step tasks. Identify assumptions; do not browse or edit files.
```

Open **Notes** and **Tasks** to review the saved work. This is a quick setup check, not the limit of what you can delegate. Follow the [quick start](GETTING-STARTED.md) for installation and connection details, then try an [end-to-end project](docs/use-cases.md).

## Choose your model setup

| What you have | Start here |
|---|---|
| OpenAI API account | [OpenAI setup](docs/model-setup.md#openai) |
| Anthropic API account | [Claude setup](docs/model-setup.md#anthropic-claude) |
| Google AI Studio API key | [Gemini setup](docs/model-setup.md#google-gemini) |
| Azure OpenAI deployment | [Azure setup](docs/model-setup.md#azure-openai) |
| A PC that can run local models | [LM Studio or Ollama](docs/local-models.md) |
| An OpenAI-compatible hosted or self-hosted endpoint | [Custom endpoint setup](docs/model-setup.md#other-openai-compatible-services) |
| Android with a model server on another computer | [Connect your phone to a server](docs/local-models.md#use-a-server-from-android-or-another-computer) |

You can save several profiles and choose a different model for a Room or Workspace. Provider, model and tool-calling compatibility varies; start with a small task before granting file or application access.

## What can you do with Atraium?

| Use case | Useful result |
|---|---|
| [Build a complete application](docs/use-cases.md#build-a-complete-application-from-a-brief) | A working project, build/test evidence, setup instructions and a handover. |
| [Cost a complete project](docs/use-cases.md#produce-a-complete-project-costing) | An auditable workbook, budget comparison, risk scenarios and a client PDF. |
| [Prepare a launch package](docs/use-cases.md#prepare-a-complete-launch-package) | A sourced assessment, positioning, presentation and actionable launch plan. |
| [Research a purchase](docs/use-cases.md#compare-products-with-current-sources) | A sourced comparison, clear limitations and a saved recommendation. |
| [Plan a project](docs/use-cases.md#turn-meeting-notes-into-a-project-plan) | An editable brief, decisions and next-step tasks. |
| [Understand a CSV](docs/use-cases.md#explore-a-csv-and-create-a-chart) | Checked totals, an inline chart and reusable data. |
| [Create a client report](docs/use-cases.md#create-a-client-ready-pdf) | A styled PDF and retained HTML source for revisions. |
| [Review a code project](docs/use-cases.md#review-a-small-code-project) | Findings tied to files, followed by changes only when requested. |
| [Prepare a handover](docs/use-cases.md#save-a-handover-without-regenerating-it) | Exact saved message text and original document/image files. |
| [Create campaign artwork](docs/use-cases.md#generate-one-campaign-image) | A requested image using a separately configured image model. |

![Atraium preview on Windows](docs/assets/atraium_preview_1.png)

## Keep work organized

- **Model profile:** a reusable provider connection, model and settings.
- **Room:** the home for an assistant's role, instructions and default model/tools.
- **Workspace:** one project inside a Room, with its own conversation, notes, tasks and artifacts.

For example, a Business Room can have separate workspaces for a website refresh, supplier research and monthly reporting. Saved notes and tasks keep the important work easy to find; you can edit them yourself.

[Rooms, workspaces and tools](docs/workspaces-and-tools.md) explains templates, model overrides and access controls.

## Add capabilities when you need them

Chat and Utility are enough to start. Add **Brave Search** for current web research, an image model for artwork, or specialized profiles for memory, speech and realtime interaction. Those services have their own account, access and cost requirements.

Built-in tools cover documents, files, research, code and supported device actions. Broader tool catalogs are available through a searchable **Gateway**; selected tools can be **Direct**. Neither route grants file permission. Compatible MCP servers can add tools, but should be treated as trusted integrations with real access—not as harmless prompts.

[Model setup](docs/model-setup.md) · [Images and voice](docs/images-and-voice.md) · [Documents and exports](docs/documents-and-exports.md)

## Preview and safety

- Windows x64 and Android packages are available. There are no public Web, macOS or iOS packages in this release.
- Preview software is not a production guarantee. Keep backups and review important output.
- Atraium is local-first, not automatically offline. Configured services receive the content needed for their requests.
- Local tools can affect real files and applications. Begin with limited access and non-sensitive data.
- Download only from the official website or this repository's Releases page, and verify the checksum.

[Preview scope](PREVIEW.md) · [Privacy](PRIVACY.md) · [Security](SECURITY.md) · [Billing](TOKEN-USAGE-AND-BILLING.md) · [Binary preview terms](BINARY-PREVIEW-TERMS.md)

## Help and feedback

Check [Troubleshooting](docs/troubleshooting.md) for connection, installation and tool problems. For a reproducible bug or focused suggestion, use [GitHub Issues](https://github.com/daemosofchaos/Atraium-Preview/issues) and follow the [support guide](SUPPORT.md). Remove credentials and private content from reports.

This repository contains the public preview downloads, documentation and feedback channels, not the Atraium application source. Any future public source release and its licence will be announced separately.
