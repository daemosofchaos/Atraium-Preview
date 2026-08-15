# Security policy

Atraium turns compatible models into assistants that can use real tools and services. Depending on the access you enable, an assistant may interact with providers, files, processes, local applications, MCP servers, plugins, and computer-use workflows.

## Supported preview versions

Only the latest published Atraium preview is considered for security fixes during the preview period.

| Version | Security consideration |
|---|---|
| Latest preview | Best-effort review and fixes |
| Older previews | Upgrade before reporting unless the issue prevents upgrade |

## Reporting a vulnerability

Do not disclose a suspected vulnerability in a public issue or discussion.

Use GitHub's **private vulnerability reporting** feature for this repository when available. Include:

- affected preview version and platform;
- concise impact description;
- reproducible steps;
- whether credentials, files, processes, model context, or remote services are exposed;
- suggested mitigation, if known.

If private vulnerability reporting is unavailable, open a public issue containing only a request for a private contact channel. Do not include exploit details or sensitive evidence.

## Security boundaries

Atraium is a powerful local application, not a sandbox. Depending on enabled tools and extensions, it may be able to:

- read, create, modify, or delete files;
- start or stop processes;
- interact with local applications;
- send instructions, files, tool results, images, audio, or other content to configured providers;
- call external HTTP services;
- load tools from MCP servers or plugin packages;
- hand work to computer-use flows.

A **Room** defines the baseline assistant identity, model, and tool policy. A **Workspace** can refine that policy for one project. These controls limit availability; they do not make a model, tool, server, or extension trustworthy.

Use a temporary, low-risk Workspace while learning the preview. Keep backups and review consequential operations.

## Tool access

Atraium includes more than 200 built-in tool operations across supported platforms and integrations. Do not expose the full catalog to every assistant by default.

- Enable only the tool sources and operations required for the task.
- Use direct routes for deliberately selected tools.
- Keep broader catalogs behind the searchable tool gateway.
- Review model requests for additional access before approving them.
- Avoid broad write, process, application, or external-service access until behaviour is understood.

## MCP servers and plugins

Treat MCP servers and plugin packages as executable integrations.

Before enabling one, review:

- its publisher and source;
- installation and update process;
- requested files, processes, credentials, and network access;
- tool descriptions and expected side effects;
- data retention and privacy policy;
- how to disable or remove it.

Use only integrations you understand and trust.

## Provider credentials

Never place provider credentials in:

- GitHub issues, discussions, or pull requests;
- screenshots or shared logs;
- Room or Workspace instructions;
- notes, tasks, prompts, or attachments;
- source-controlled settings files;
- portable backup files.

Use a dedicated provider project or key where possible. Revoke a credential immediately if it may have been exposed.

## Model behaviour is not an authorization boundary

A system prompt, personality, or assistant instruction can guide behaviour, but it is not a security control. Enforce boundaries through tool policy, operating-system permissions, provider settings, isolated test data, and human review.

Do not rely on a model instruction alone to prevent destructive, expensive, or privacy-sensitive actions.

## Release verification

Download preview binaries only from:

- the [official Atraium website](https://atraium.com); or
- [Atraium Preview GitHub Releases](https://github.com/daemosofchaos/Atraium-Preview/releases).

Verify the published SHA-256 checksum for the exact file before running or installing it.
