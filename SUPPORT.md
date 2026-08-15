# Preview support

Atraium preview support is community-style and best-effort. There is no service-level agreement or guaranteed response time.

## Start with the product model

When describing a problem, identify where it occurs:

- **Model profile:** the provider, endpoint, API mode, model, credentials, or capability route.
- **Room:** the assistant identity, base instructions, default model, or baseline tool policy.
- **Workspace:** the project instructions, model override, tool selection, conversation, notes, tasks, files, or results.
- **Tool or extension:** a built-in operation, tool source, MCP server, or plugin.

This is more useful than reporting only that “the assistant did not work.”

## Use Discussions for

- general questions;
- assistant and prompt approaches;
- workflow ideas;
- sharing non-sensitive experiences;
- understanding whether behaviour is expected.

If GitHub Discussions becomes available for this repository, use it for these broader questions. Until then, use an issue only when the question is specific and actionable.

## Use Issues for

- reproducible bugs;
- installation failures;
- provider or model-profile errors with credentials removed;
- broken or misleading documentation;
- focused product feedback grounded in a real workflow.

Open an issue at [Atraium Preview Issues](https://github.com/daemosofchaos/Atraium-Preview/issues).

## Before reporting a bug

1. Confirm you are using the latest preview.
2. Restart Atraium and retry the smallest failing workflow.
3. Run **Test connection** for the affected model profile.
4. Try a low-risk prompt without tools to separate model connectivity from tool behaviour.
5. Check whether the issue follows the model profile, Room, Workspace, tool source, or specialist capability.
6. If possible, reproduce it in a temporary Workspace with minimal instructions and permissions.
7. Review the provider dashboard for rejected requests, rate limits, quota, or billing errors.
8. Remove credentials and sensitive content from logs and screenshots.
9. Search existing issues for the same symptom.

## What to include

- Atraium preview version;
- Windows version or Android device and Android version;
- installer, portable archive, direct APK, or Android bundle;
- provider category and API mode, without credentials or private endpoints;
- model or deployment name when it is safe to disclose;
- whether the problem affects a model profile, Room, Workspace, tool source, MCP server, or specialist capability;
- minimal steps to reproduce;
- expected result;
- actual result and exact visible error;
- whether it happens consistently;
- whether the same task works with a different compatible model profile.

## What not to include

Never publish:

- API keys, tokens, passwords, or credential files;
- private endpoints or signed URLs;
- customer, employee, or personal data;
- confidential instructions, prompts, conversations, notes, or tasks;
- proprietary source code;
- sensitive files, screenshots, or full unredacted logs.

## Model and provider compatibility

A successful connection test does not guarantee that every model supports:

- streaming;
- high-context requests;
- reasoning metadata;
- the provider's exact tool-call format;
- every built-in tool description;
- images, audio, realtime interaction, or specialist routes.

Include the serving stack, API mode, model, quantization, and chat template when they are relevant and safe to disclose.

## Tool and extension issues

For a tool-related problem, include:

- the tool source and operation name;
- whether it was routed directly or through the searchable gateway;
- the Room or Workspace policy involved;
- the smallest non-sensitive input that reproduces it;
- whether the operation ran, failed, or produced an unexpected result.

For MCP or plugin issues, identify the integration and transport without publishing secrets.

## Provider billing issues

Atraium does not process provider billing and cannot access your provider account. Billing disputes, refunds, quota changes, and account-specific usage records must be handled with the provider.

Use an Atraium issue only for reproducible application behaviour that appears to cause unexpected or repeated requests. Remove credentials, billing identifiers, private prompts, and provider logs before posting.

Read [Token usage and provider billing](TOKEN-USAGE-AND-BILLING.md).

## Feature requests

Describe the workflow rather than only naming a feature:

- what you were trying to accomplish;
- which model, assistant, tools, and working context were involved;
- why the current experience was insufficient;
- what a successful outcome would look like;
- whether you would use it repeatedly.
