# Token usage and provider billing

> **Atraium is a bring-your-own-model application. You are responsible for usage and charges created through the provider accounts, API keys, endpoints, MCP servers, plugins, and other services you configure.**

Atraium does not include model credits or token allowance. It does not resell model access, collect provider payments, control provider pricing, or receive a portion of your provider bill.

When Atraium sends a request using credentials or endpoints you supplied, the relevant provider may charge your account according to its own prices, billing units, limits, and terms.

## Why one assistant can use several billable services

Atraium allows different model profiles to handle different kinds of work. A Room or Workspace may therefore use separate profiles for:

- the main assistant conversation;
- supporting or utility reasoning;
- search and grounding;
- embeddings and memory;
- image generation and editing;
- realtime interaction;
- text-to-speech;
- speech-to-text and transcription.

Tools, MCP servers, and plugins may call additional services too. Review every configured profile and integration, not only the main assistant model.

## What may create charges

Depending on the provider and configuration, billable activity may include:

- input and output tokens;
- reasoning or completion tokens;
- cached-input, cache-read, or cache-write usage;
- assistant and Workspace system instructions;
- long conversation context;
- follow-up model calls during multi-step tool workflows;
- search, grounding, retrieval, or hosted tool calls;
- embeddings and semantic-memory operations;
- image generation and image editing;
- audio, speech, transcription, and realtime sessions;
- requests made by configured MCP servers or plugins;
- retries, revisions, verification passes, and repeated attempts;
- provider-specific features with separate prices.

A local tool does not necessarily create a separate provider charge by itself. However, the model calls used to select the tool, interpret its output, continue the workflow, and produce a final result may consume additional tokens.

## Why a short prompt can cost more than expected

The assistant may need several steps to finish one request:

1. interpret the goal;
2. select or search for a tool;
3. call the tool;
4. read the result;
5. update tasks or notes;
6. call another tool or model route;
7. verify the work;
8. produce the final response.

The visible length of your original prompt is therefore not a reliable estimate of total usage.

Usage can rise quickly during:

- deep or iterative research;
- large repository analysis;
- long conversations with substantial retained context;
- autonomous or multi-step coding loops;
- repeated build, diagnose, edit, and retry cycles;
- document, workbook, and presentation generation;
- repeated image generation or editing;
- large file or web-page processing;
- realtime and voice sessions;
- workflows left running without supervision.

## Model switching and usage

Switching the main model profile starts a fresh provider conversation so incompatible provider state is not mixed. The Room and Workspace structure remains, but later requests can still include the instructions, files, notes, task context, or other information needed for the work.

Bench testing several profiles can create usage across several providers or accounts. Compare provider dashboards and time ranges when evaluating cost.

## Atraium usage records are not the provider bill

Atraium can record usage reported by supported provider routes and present it in usage views. These records are useful for understanding model and Workspace activity, but they are not a provider invoice or hard spending control.

- Provider-side billing records are authoritative.
- Some providers report incomplete or delayed usage data.
- Prices, metering units, and cache rules can change.
- A local estimate may not include every provider feature or external service.
- Failed, interrupted, retried, or unsatisfactory requests may still be billable.
- Atraium cannot reverse, refund, or credit charges made by a provider.

Contact the provider about account billing, disputed charges, quotas, or refunds.

## Recommended safeguards

Before substantial work:

1. Create a separate provider project, account, or API key for Atraium where supported.
2. Configure provider-side budgets, hard limits, quotas, and alerts.
3. Confirm the price of every configured model profile and specialist capability.
4. Begin with small, focused tasks while learning the model's behaviour.
5. Use cost-appropriate models for routine or supporting work.
6. Limit unnecessary history and very large inputs.
7. Monitor the provider dashboard during long or tool-rich workflows.
8. Stop workflows that loop, repeatedly fail, or are no longer useful.
9. Revoke or rotate a key immediately if it is exposed.
10. Do not leave expensive workflows unattended.

A provider-side hard limit is safer than relying only on an alert, because alerts may be delayed.

## Room and Workspace safeguards

Cost can be managed indirectly through configuration:

- choose an appropriate default model profile;
- override a Room or Workspace only when a different model is needed;
- expose only the tools required for the job;
- keep broad catalogs behind the searchable tool gateway;
- use focused Workspace instructions and tasks;
- review tool activity and stop unproductive loops;
- disable specialist capabilities that are not in use.

These measures reduce unnecessary work but are not substitutes for provider-side spending limits.

## Local and self-hosted models

A local or self-hosted endpoint may not charge per token, but it can still create costs such as:

- rented compute;
- cloud infrastructure;
- electricity and hardware usage;
- storage and bandwidth;
- third-party hosting fees.

Those costs remain your responsibility.

## Before reporting unexpected usage

If a workflow appears to use more resources than expected:

1. stop the active workflow where possible;
2. review every provider dashboard and request log involved;
3. rotate or disable a key if usage appears unauthorized;
4. record the Atraium version, approximate time range, model profiles, Room, Workspace, and tool activity;
5. reproduce only with low-risk data and strict provider limits if safe to do so;
6. remove account identifiers, credentials, prompts, and sensitive content before opening a public issue.

An Atraium issue can help investigate reproducible application behaviour. It cannot resolve a provider billing dispute or issue a refund.

## Acceptance of responsibility

By configuring credentials or endpoints and using Atraium, you acknowledge that:

- requests are made against services you selected;
- you are responsible for monitoring and limiting their use;
- you are responsible for resulting provider and infrastructure charges;
- Atraium is not responsible for provider pricing, billing delays, disputed charges, overspend, or refund decisions.

If you are not comfortable accepting that responsibility, do not configure paid provider credentials in the preview.
