# Privacy notes

Atraium is designed as a local-first application. Local-first means that its project structure and application data are primarily kept on your device; it does not mean every configured workflow is offline.

## Data stored locally

Depending on configuration and use, Atraium may store information such as:

- Rooms and assistant identities;
- Workspace instructions, conversations, notes, tasks, files, and generated artifacts;
- model-profile configuration;
- application settings and local databases;
- memory or embedding data;
- usage records reported by supported providers;
- diagnostic information and logs.

Secure provider credentials are handled separately from ordinary portable application data and are excluded from normal backup payloads where applicable.

Anyone with access to the device, application data directory, exported files, or unprotected backups may be able to read the data stored there. Use operating-system account protection, device encryption, appropriate file permissions, and secure backups.

## Data sent to configured services

Atraium sends information to providers and services that you configure or explicitly use. Depending on the workflow, this may include:

- assistant and Workspace instructions;
- prompts and conversation context;
- notes, tasks, attachments, or file content included in model context;
- tool arguments and tool results needed to continue the work;
- search queries and retrieved web content;
- text submitted for embeddings or memory processing;
- image prompts, images, audio, or transcripts;
- content sent to MCP servers, plugins, websites, or other external services.

A model provider may receive the context needed to choose a tool and interpret its result even when the tool itself runs locally. Review the visible request context, tool access, and provider policy before using sensitive information.

External services have their own privacy policies, retention rules, regional processing arrangements, logging, and account controls. Atraium cannot override those policies.

## Model profiles and routing

Different capabilities may use different profiles or providers. The main assistant model, supporting reasoning, search, embeddings, image generation, realtime interaction, speech output, and transcription may therefore send data to different services.

Review every configured profile, not only the main assistant model. A Room or Workspace override can also change which provider receives future requests.

## Tools, MCP servers, and plugins

Built-in tools, MCP servers, and plugins can have different data access and network behaviour.

- Enable only the tool sources and operations required for the job.
- Treat MCP servers and plugin packages as executable integrations.
- Review their publisher, configuration, requested permissions, and network destinations.
- Do not assume an extension follows Atraium's local-first storage model.

Room and Workspace policy helps limit availability, but it does not make an external service private or trusted.

## Device permissions

On Android, camera, microphone, foreground location, and calendar access are requested when their corresponding features are invoked. Denying a permission prevents or limits that feature.

On desktop platforms, local file, process, application, and computer-use capabilities depend on the access granted to Atraium and the tools you enable.

## Product analytics and diagnostics

The current preview does not intentionally send product-usage analytics to an Atraium-operated cloud service.

Atraium may produce local logs and diagnostics. Configured model providers, websites, MCP servers, plugins, and other external services receive requests required for the functions you use and may perform their own analytics or logging.

The public Atraium website is served through Cloudflare and may use Cloudflare-provided traffic and security services. Website traffic is separate from application project data.

## Public issue reports

GitHub issues, pull requests, and discussions are public. Do not include:

- API keys, tokens, passwords, or credentials;
- private endpoint URLs;
- confidential prompts, instructions, or conversations;
- customer, employee, or personal data;
- proprietary source code;
- sensitive paths, logs, screenshots, documents, tasks, or notes.

Create a minimal reproduction using non-sensitive data wherever possible.

## Your choices

You decide which providers, profiles, extensions, files, tools, and permissions an assistant can use. Begin with limited access and expand deliberately.

If specific content must not leave the device, do not place it in a workflow connected to a remote provider, MCP server, plugin, website, or other external service.
