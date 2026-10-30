# Token usage and provider billing

> **You are responsible for charges created through the accounts, API keys, endpoints, MCP servers, plugins and other services you configure in Atraium.**

Atraium is a bring-your-own-model application. It does not include model credits or token allowance, resell model access, collect provider payments or receive a portion of your provider bill. Providers set their own prices, limits and terms.

## Set limits before adding a key

Use a separate provider project or API key for Atraium where supported. Configure provider-side budgets, quotas, hard limits and alerts, then monitor the provider dashboard during your first tasks.

A spending alert may be delayed and is not necessarily a hard limit. Atraium's usage view is not a hard spending control. Do not leave expensive or repeated requests unattended.

Consumer ChatGPT, Claude or Gemini subscriptions do not necessarily include API credits. Check API billing independently before connecting the account.

## What can create charges?

| Activity | Possible charges |
|---|---|
| Chat and Utility | Input/output tokens, reasoning, retained context and cache usage. |
| Research | Model requests, search queries, grounding/retrieval or hosted service charges. |
| Memory | Embeddings and semantic processing. |
| Images | Generated outputs, edits, resolution/quality or provider-specific units. |
| Videos | Hosted generation, clip duration, resolution, audio or provider-specific units; GPU compute for self-hosted generation. |
| Speech and realtime | Audio duration, transcription, generated speech and active sessions. |
| Tools and integrations | Follow-up model calls and any paid MCP/plugin/external services. |
| Self-hosting | Compute rental, electricity, hardware, storage and bandwidth. |

Pricing and metering differ between services and can change. Failed, interrupted, retried or unsatisfactory requests may still be billable.

A local tool does not necessarily have its own provider charge. However, the model can consume tokens to select it, read the result and continue. A short prompt can therefore create several requests, especially during research, document creation, large-file analysis or coding tasks.

## One assistant can use several services

Review all capability assignments, not only Chat. Utility, embeddings, images, videos, speech and realtime may use different profiles. Brave web grounding is a separate service with its own key, quota and pricing. MCP servers and plugins can add other services.

For example, a local Chat model can still produce remote charges if Utility, search, image generation or video generation uses a hosted service. A Room or Workspace model override can also change where later requests are billed.

## Budget for a coordinated team

A Supervisor and its specialists can make several model requests for one project. In **0.6.0 Preview 1**, the shared request allowance covers specialists' new Chat and Utility requests and retries, including nested teams. Follow-up requests after a tool runs, and the coordinating Supervisor's own requests, are outside that allowance but may still incur charges.

Finishing a specialist's work does not replenish the allowance, and checking progress does not extend the deadline. The Supervisor can still review results and finish a handover after the specialists reach their limits.

**Delegation limits are not monetary spending caps.** They do not fix the number of tokens in each request or cap separately billed search, media, MCP services or infrastructure. More workers are not automatically cheaper or faster.

Begin with a small team, modest concurrency and a narrow brief. Review the model and capability profiles involved, set provider-side budgets and quotas, and monitor every relevant account. Stopping a branch does not reverse completed tool actions or charges already incurred.

[Supervisor limits and controls](docs/supervisor-workspaces.md#understand-the-shared-limits)

## Using Skills

**Skills are introduced in 0.6.0 Preview 1.** Using them can contribute to normal model usage, both when the assistant chooses suitable guidance and when it works with the instructions and references you supply. Charges depend on the models and services you have connected.

Review all connected providers even if your main Chat model is local. Keep Skills focused, monitor usage and set provider-side budgets. Turning a Skill **Off** prevents future use; it does not refund earlier charges. [Skills guide](docs/skills.md).

## Use cost-appropriate settings

- Start with small tasks and modest input sizes.
- Use a suitable lower-cost or local model for routine work where it is reliable.
- Request one image or a focused revision rather than unneeded variations.
- Keep instructions and conversation context relevant to the project.
- Enable only required tools and optional capabilities.
- Monitor long research, coding and voice sessions; stop repeated failures.
- Check every configured service's price, access and quota.
- Revoke or rotate a key immediately if it may have been exposed.

These choices can reduce unnecessary usage. They do not replace provider-side limits or guarantee a particular cost.

## Usage records are not an invoice

Atraium can show usage reported by supported providers. Those records help you understand activity, but may be incomplete, delayed or omit separately billed features and integrations.

**Provider-side billing records are authoritative.** Atraium cannot reverse, credit or refund provider charges, enforce a provider budget, or control pricing and billing delays. Contact the provider about account access, quota, refunds or disputed charges.

When comparing profiles, compare the same task and time range across all provider dashboards involved. Switching the main model starts a fresh provider conversation, but later requests can still include relevant instructions, files, notes and task context.

## Local does not always mean free

A local endpoint may have no per-token fee, but hardware, electricity and storage still cost resources. A self-hosted cloud server may continue charging for compute even while Atraium is closed. Stopping chat does not shut down a rented server or reverse charges already incurred.

If content or usage must stay local, review **every** profile and integration. [Local model setup](docs/local-models.md) explains a starting configuration.

## Unexpected usage

Stop the active request when possible, then check the provider's dashboard and request history. If usage appears unauthorized, disable or rotate the key. Record the approximate time, affected profiles and visible activity before retrying with small non-sensitive inputs and strict limits.

Use [Support](SUPPORT.md) for reproducible application behavior. Remove credentials, account identifiers and sensitive prompts from any public report. Atraium cannot settle a provider billing dispute.

## Acceptance of responsibility

By configuring credentials or endpoints and using Atraium, you acknowledge that:

- requests are made against services you selected;
- you are responsible for monitoring and limiting their use;
- you are responsible for resulting provider and infrastructure charges;
- Atraium is not responsible for provider pricing, billing delays, disputed charges, overspend, or refund decisions.

If you are not comfortable accepting that responsibility, do not configure paid provider credentials in the preview.

[Getting started](GETTING-STARTED.md) · [Model setup](docs/model-setup.md) · [Privacy](PRIVACY.md) · [Binary preview terms](BINARY-PREVIEW-TERMS.md)
