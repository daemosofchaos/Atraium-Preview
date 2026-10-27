# Help and support

Start with the guide closest to the problem:

| Need help with… | Guide |
|---|---|
| Installation or first setup | [Getting started](GETTING-STARTED.md) |
| OpenAI, Claude, Gemini, Azure or a custom endpoint | [Model setup](docs/model-setup.md) |
| LM Studio, Ollama or a server used from Android | [Local models](docs/local-models.md) |
| Workspaces, tools and folder access | [Workspaces and tools](docs/workspaces-and-tools.md) |
| Supervisor teams, shared limits or interrupted assignments | [Work delegation](docs/supervisor-workspaces.md) |
| PDFs, visuals or saving existing work | [Documents and exports](docs/documents-and-exports.md) |
| Images or speech | [Images and voice](docs/images-and-voice.md) |
| An error or an unexpected result | [Troubleshooting](docs/troubleshooting.md) |

Preview support is best-effort, with no service-level agreement or guaranteed response time.

## Report a bug or suggest an improvement

Use [GitHub Issues](https://github.com/daemosofchaos/Atraium-Preview/issues) for reproducible bugs, installation failures, documentation corrections and focused feedback. Search existing issues first.

For a bug, include:

- Atraium version and package: Windows installer/portable, Android APK/bundle;
- operating system version and, for Android, device model;
- affected area: connection, Chat, workspace, tool, document or media;
- provider category, API mode and model ID if safe to disclose;
- the smallest steps that reproduce it;
- expected result, actual result and exact visible error;
- whether the issue happens consistently.

For a tool problem, include its visible source/action and whether it uses Direct or Gateway. For a local model, identify the serving application, model and relevant context/quantization settings when safe to share.

For delegation, include the visible assignment status, whether nested supervision was enabled, the configured limits, and whether the issue followed pause, stop or an application interruption. Use non-sensitive example objectives; do not publish private worker conversations or project files.

For a suggestion, explain what you wanted to accomplish, what got in the way and what would make the result useful. A concrete example is more helpful than a feature name alone.

## Before retrying

Check the affected profile and capability assignment. Try a short, low-risk request to distinguish a connection problem from tool use or a large input. Check provider quota and rejected-request details when available.

Tests, retries and requests that fail or are interrupted may still be billable. Stop an unproductive repeated attempt before investigating. Do not delete application data or reset saved projects as a first repair step.

## Keep reports safe to share

GitHub issues and pull requests are public. Remove:

- API keys, passwords, tokens and credential files;
- private endpoints, signed URLs and account identifiers;
- confidential conversations, instructions, notes and tasks;
- customer, employee and personal information;
- proprietary code, sensitive file paths and unredacted logs/screenshots.

Use sample data and a minimal reproduction instead of uploading a whole private project.

**Security vulnerability?** Do not post exploit details publicly. Follow the [private-reporting guidance](SECURITY.md#reporting-a-vulnerability).

## Provider account and billing help

Atraium cannot access your provider account, change its quota or issue refunds. Contact the provider for charges, credits, account access and billing disputes. Provider records are authoritative.

Report an Atraium issue only for reproducible application behavior that appears to cause unexpected or repeated requests, with credentials and sensitive content removed. See [Token usage and provider billing](TOKEN-USAGE-AND-BILLING.md).

## Share documentation improvements

Documentation corrections can be submitted as focused pull requests. See [Contributing feedback](CONTRIBUTING.md).

[Documentation](docs/README.md) · [Preview scope](PREVIEW.md) · [Privacy](PRIVACY.md)
