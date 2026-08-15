# Getting started with the Atraium preview

Atraium connects a compatible model to an assistant identity, selected tools, and persistent places to work. This guide takes you from a verified download to a first low-risk assistant Workspace.

The current preview supports **Windows desktop** and compatible **Android** devices. Windows is the recommended preview target. Android is an early sideloaded preview for Android 7.0 (API 24) or later.

## Before you begin

You need:

- Windows x64, or an Android 7.0+ arm64-v8a device or x86_64 emulator;
- a compatible local runtime, self-hosted endpoint, or cloud model provider;
- provider credentials when the selected endpoint requires them;
- permission to install or run the preview;
- an understanding that provider and infrastructure usage may incur charges.

Atraium does not bundle a model, provider account, API key, or token allowance.

> **Before using a paid endpoint:** configure provider-side budgets, hard limits, quotas, and alerts. Atraium cannot enforce a provider budget or issue a provider refund. Read [Token usage and provider billing](TOKEN-USAGE-AND-BILLING.md).

## 1. Download the official release

Open the [Atraium Preview Releases](https://github.com/daemosofchaos/Atraium-Preview/releases) page and select the latest release marked as a **prerelease**.

Choose the package for your device:

- **Windows:** download the installer or portable archive.
- **Android:** download the APK to sideload. The Android preview bundle contains the identical APK plus preview, privacy, security, and billing documents.

Download the release's SHA-256 checksum manifest too.

## 2. Verify the checksum

Compare the SHA-256 hash of the exact file you downloaded with the matching filename in the release checksum manifest.

On Windows, PowerShell can calculate a hash with:

```powershell
Get-FileHash .\Atraium-0.3.4-preview.1-win-x64-setup.exe -Algorithm SHA256
```

For an Android APK, use a SHA-256 tool you trust on the device or computer where it was downloaded.

If the values differ, do not run or install the file. Delete it and download it again from the official release page.

## 3. Install Atraium

### Windows installer

Run the installer and follow its prompts.

### Windows portable build

Extract the archive to a folder you control, then launch Atraium from that folder.

If Windows displays a reputation warning for an unsigned preview, verify the repository, release URL, and checksum first. Do not disable system-wide security features.

### Android APK

1. Confirm the device runs Android 7.0 (API 24) or later and uses arm64-v8a. x86_64 Android emulators are also supported.
2. Download the direct APK, or extract the same APK from the Android preview bundle.
3. Open it from the browser or file manager that downloaded it.
4. When Android asks, allow **that specific app** to install unknown apps, then complete the normal install prompt.
5. Review runtime permissions when you invoke their corresponding features. Camera, microphone, foreground location, and calendar access are requested on demand.

Use the Windows preview for the broadest desktop-tool coverage.

## 4. Protect the provider account

Before adding credentials:

1. review the provider's pricing for every model and capability you plan to use;
2. create a separate project or API key for Atraium where supported;
3. set provider-side budgets, hard limits, quotas, and alerts;
4. open the provider usage dashboard so you can monitor the first workflows.

Provider-side controls and billing records are authoritative.

## 5. Create the first model profile

A **model profile** is a reusable connection to a model. It stores the provider, endpoint, API mode, model or deployment, credentials, token limits, and related settings.

Open **Setup & Settings**, choose **Model providers**, or continue through first-run setup:

1. create a model profile;
2. select the provider and API mode;
3. enter the endpoint, model identifier, deployment, and credentials where required;
4. assign it as the main assistant model;
5. run **Test connection**;
6. save the profile after the test succeeds.

The current preview labels the main assistant route **Chat** in provider settings. This is the model that receives your messages, uses available tools, and produces the assistant response.

A successful connection test confirms that a small request worked. It does not guarantee streaming, high-context, reasoning, or tool-calling compatibility. Test those behaviours with low-risk work.

### Local and self-hosted models

Atraium connects to the API exposed by your serving stack. For a compatible local or self-hosted model:

1. start the model in the serving software of your choice;
2. note its OpenAI-compatible endpoint and model identifier;
3. create an **OpenAI-compatible** profile in Atraium;
4. choose **Chat Completions** when that is the route exposed by the server;
5. test the profile before enabling local tools.

Compatibility depends on the model, quantization, serving software, chat template, context size, streaming implementation, and tool-call support.

### Models that require the system message first

The default **Chat Completions context caching** mode keeps the root system prompt stable and sends current-turn context separately, improving prompt-cache reuse for compatible providers.

If a model or server accepts a system-role message only in the first position, open the profile's **Chat Completions context caching** panel and enable **Update system message with current-turn context**. This places dynamic context in the single root system message. It may reduce prompt-cache hits.

## 6. Turn the model into an assistant

Create a **Room**. A Room is the persistent home for one assistant.

Configure:

- a clear Room name;
- the assistant's name and identity;
- a concise personality or a complete system prompt;
- boundaries and preferred working style;
- the default model profile;
- the baseline tool policy.

Example assistant instruction:

> You are a practical research colleague. Prefer current primary sources, state uncertainty clearly, keep notes about unresolved questions, and turn findings into concrete next steps.

The Room defines **who the assistant is**, not merely the topic of one conversation.

## 7. Give the assistant a Workspace

Create a **Workspace** inside the Room. A Workspace is a project desk for a distinct piece of work.

A Workspace can contain:

- its own project instructions or the inherited Room identity;
- a model-profile override;
- a project-specific tool policy;
- conversation history;
- editable tasks and notes;
- attachments and source material;
- generated artifacts and results.

Start with one focused Workspace, such as:

- research a topic and preserve the sources;
- inspect a small code project and explain its structure;
- turn a set of notes into a finished document;
- compare two configured models against the same task.

## 8. Choose the tools

Atraium includes **200+ built-in tool operations** across supported platforms and integrations. Do not expose all of them simply because they exist.

For the first Workspace:

1. open its tool and access settings;
2. enable only the sources required for the job;
3. disable individual operations that are unnecessary or too broad;
4. place frequently required tools on the direct route where appropriate;
5. leave broader catalogs behind the searchable tool gateway;
6. review consequential file, process, application, and external-service operations.

Room policy establishes a baseline. Workspace policy can refine it for one project.

## 9. Use tasks and notes as shared working memory

Tasks and notes are not hidden model memory. They are editable project records shared between you and the assistant.

- Add tasks that define what remains to be done.
- Let the assistant update task status while working.
- Record decisions, findings, and handoff context in notes.
- Edit or add entries yourself whenever needed.
- Keep important output as Workspace artifacts or files.

This gives the assistant a durable view of the project without relying only on a long conversation.

## 10. Add specialist capabilities when needed

The current provider settings expose several capability routes. Configure only those useful to your work:

- **Utility** for supporting or routine model work;
- **Search / Grounding** for current, source-backed research;
- **Embeddings** for compatible memory and semantic workflows;
- **Image generation** for image creation or editing;
- **Realtime** for compatible live sessions;
- **Text-to-speech** for spoken output;
- **Speech-to-text** for transcription or voice input.

Each route may use a different model profile and provider. Confirm compatibility and pricing for each one.

## 11. Switch models without rebuilding the assistant

Save multiple model profiles when you want to compare models or change capabilities.

You can choose a profile as the global default, override it for a Room, or override it for a Workspace. The assistant identity, instructions, tools, tasks, notes, files, and project structure remain in place.

Changing the main model starts a fresh provider conversation so incompatible provider state is not mixed. This is useful for bench testing or moving a project to a model with different cost, speed, privacy, context, reasoning, or tool-calling characteristics.

## 12. Extend with MCP when useful

Atraium can load tools from compatible Model Context Protocol servers:

- hosted HTTP/SSE servers;
- local desktop stdio servers.

Treat an MCP server as executable integration code. Review its publisher, configuration, permissions, network destinations, and tool descriptions before connecting it. Make its tools available only to the Rooms and Workspaces that need them.

## A sensible first workflow

1. Use a low-cost or local model profile.
2. Create one narrowly defined assistant Room.
3. Create one temporary Workspace.
4. Enable only search or file-read tools needed for the task.
5. Add two or three explicit tasks.
6. Ask the assistant to complete one task and record its findings in a note.
7. Review the response, tool activity, task changes, notes, provider usage, and generated files.
8. Expand access only after the behaviour is understood.

## Reporting a problem

Use a [GitHub issue](https://github.com/daemosofchaos/Atraium-Preview/issues) and include:

- Atraium preview version;
- Windows version or Android device and Android version;
- installer, portable archive, direct APK, or Android bundle;
- provider category and API mode, without credentials;
- affected model profile, Room, Workspace, tool source, or specialist capability;
- minimal steps to reproduce;
- expected and actual results;
- exact visible error text.

Remove secrets and sensitive material before posting. See [Support](SUPPORT.md), [Privacy](PRIVACY.md), and [Security](SECURITY.md).
