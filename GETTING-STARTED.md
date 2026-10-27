# Get started with Atraium

Install the preview, connect one model, and give your assistant a small task. You do not need to configure every optional feature first.

**You need:** a Windows x64 computer or supported Android device, plus a model API account or an already running local/self-hosted model server. Atraium does not bundle models or API credits.

> For a paid provider, create an API key and set provider-side budgets, quotas and alerts before setup. Consumer chat subscriptions do not necessarily include API access. Read [Billing](TOKEN-USAGE-AND-BILLING.md) and [Privacy](PRIVACY.md) before sending sensitive information.

## Install Atraium

Download a package and its checksum manifest from the [official release](https://github.com/daemosofchaos/Atraium-Preview/releases/tag/v0.5.0-preview.1). The [README download table](README.md#download) explains the choices.

### Verify your download

Calculate SHA-256 for the exact file and compare it with the matching filename in `Atraium-0.5.0-preview.1-SHA256SUMS.txt`.

For the Windows installer:

```powershell
Get-FileHash .\Atraium-0.5.0-preview.1-win-x64-setup.exe -Algorithm SHA256
```

For the portable archive:

```powershell
Get-FileHash .\Atraium-0.5.0-preview.1-win-x64-portable.zip -Algorithm SHA256
```

For an APK, calculate the hash on a computer or with a trusted device utility. If it differs from the manifest, **do not install or run the file**; download it again from the official release.

A checksum verifies the file against the published manifest. It does not replace checking the download's origin or reviewing operating-system security warnings.

### Windows installer

Run the verified installer, follow its prompts and open Atraium. This package installs for the current Windows user.

If Windows blocks or warns about a preview package, check its source and checksum. On a managed computer, ask your administrator about application policy rather than disabling system-wide protection.

### Windows portable archive

Use **Extract All** to unpack the entire ZIP into a folder you control, then launch `Atraium.exe` from the extracted folder. Do not run it inside the ZIP or copy only the executable; keep the accompanying files and folders together.

The portable package avoids an installer. It is not a promise that application data, settings or secure credentials can be moved between computers by copying that folder. Use Atraium's backup/export features for saved work, and expect to re-enter secrets on a new device.

### Android

The preview supports **Android 7.0 (API 24) or later**, with arm64-v8a devices and x86_64 emulators.

Open the verified APK in your browser or file manager. If Android requests permission to install unknown apps, grant it only to that app, complete installation and turn it off again when no longer needed. On older Android versions with a device-wide setting, restore that setting afterward.

The Android ZIP contains the same APK plus reference documents; it is not a separate application. Camera, microphone, foreground location and calendar permissions are requested when their features are used. Windows has broader desktop-tool coverage.

## Connect one text model

Use the first-run **Model providers** step, or open **Setup & settings → Model providers**.

1. Add a profile with **Text generation** as its purpose.
2. Enter the provider, base endpoint, model ID and required API key. For an OpenAI-compatible service, choose its supported API mode.
3. Use **Test connection** and save the profile.
4. In **Chat and utility**, assign it to both **Chat** and **Utility**.
5. Leave optional memory, images, web grounding, realtime and speech unconfigured if you do not need them, then finish setup.

Both Chat and Utility need a ready profile; **they can share the same one**. Outside the wizard, capability assignments are available in **Setup & settings → Advanced settings → LLM settings**.

| Your model service | Provider choice | Base endpoint | API mode |
|---|---|---|---|
| OpenAI | OpenAI compatible | `https://api.openai.com/v1` | Responses API |
| Anthropic Claude | Anthropic Claude | `https://api.anthropic.com` | Native API |
| Google Gemini | Google Gemini | `https://generativelanguage.googleapis.com` | Native API |
| Azure OpenAI | OpenAI compatible | `https://YOUR-RESOURCE.openai.azure.com/openai/v1` | Deployment's supported tool-calling route |
| LM Studio on this PC | OpenAI compatible | `http://localhost:1234/v1` | Chat Completions API |
| Ollama on this PC | OpenAI compatible | `http://localhost:11434/v1` | Chat Completions API |

Copy the **exact API model ID** from the provider or running server. For Azure, also enter the actual deployment name and choose a route that supports tools for that model. Local models must already be installed and served by their own software. For GPT-6 Astra/Sol, Claude 5.5 and KAT-Coder examples, see the setup guides below.

[Hosted and custom model recipes](docs/model-setup.md) · [LM Studio and Ollama recipes](docs/local-models.md)

Connection tests can make a small billable request. A passing test does not prove that the model handles every tool, input size or media capability.

## Create your assistant and try a task

Create a **Room** with a name such as *Project assistant*. Choose your text profile and keep the instructions short:

```text
Help me complete the work I delegate, not just plan it. Make reasonable decisions
within the scope, state important assumptions and check results. Keep agreements
in notes and project actions in tasks. Ask before spending money, publishing,
sending external messages or changing anything outside the agreed access.
```

Use the Room's **Main workspace** and send:

```text
Help me plan a four-week website refresh for a small consulting firm, with one
available developer. Save a short project brief as a workspace note and create
three next-step tasks. Identify assumptions; do not browse or edit files.
```

Review the response, then open **Notes** and **Tasks**. These are shared project records: you can edit them, and the assistant can update them when asked. If it describes a note but does not save one, check that Workspace tools are available and that the model supports tool calling.

This small task checks that the model and tools are connected; it is not the limit of the assistant's role. Next, delegate a [complete application](docs/use-cases.md#build-a-complete-application-from-a-brief), [project costing](docs/use-cases.md#produce-a-complete-project-costing) or [launch package](docs/use-cases.md#prepare-a-complete-launch-package). The [independent-assistant guide](docs/independent-assistants.md) explains suitable models, access and completion criteria.

## Add only what your next task needs

| Want to… | Add… |
|---|---|
| Build an application | A capable coding/tool model, an approved writable project folder, file/command tools and the required SDKs. |
| Produce a complete costing | Scope, quantities, rates/quotes, spreadsheet/PDF tools and an output folder. |
| Research current information | A **Brave Search API key** in Web grounding; this is separate from model profiles. |
| Work with local files | Access to the specific working folder and the relevant tools. |
| Create images | A separate image-capable profile assigned to Image generation. |
| Use voice | Suitable speech/transcription or realtime profiles and device permissions. |
| Create styled PDFs on Windows | Installed Edge or Chrome, plus the PDF tools. |
| Connect an external integration | A compatible, trusted MCP server and narrowly selected tools. |

[Workspaces and access](docs/workspaces-and-tools.md) · [Images and voice](docs/images-and-voice.md) · [Documents and exports](docs/documents-and-exports.md)

If Chat is unavailable, a local connection fails, or a tool is missing, start with [Troubleshooting](docs/troubleshooting.md). Do not reset application data or delete saved projects as a first repair step.
