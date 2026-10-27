# Connect hosted and custom models

A model profile stores a reusable connection. Choose a provider, enter its endpoint and model details, then assign the profile to the capabilities you want to use.

**The tables below are values to enter in Atraium, not configuration files to import.** Keep API keys in the profile's secret field—not in prompts, notes or shared screenshots.

## Create and assign a profile

Open **Setup & settings → Model providers**, or use first-run setup. Add a profile with purpose **Text generation**, complete the fields, use **Test connection**, and save it.

Assign it to **Chat** in the wizard's **Chat and utility** step. Utility is optional; leave it unassigned to use Chat for supporting work. After setup, assignments are available in **Setup & settings → Advanced settings → LLM settings**.

- **Chat** handles your main conversation and tool requests.
- **Utility** handles supporting model work. It uses Chat when no ready Utility profile is assigned, or a separate suitable text profile when you choose one.
- **Model** is an API identifier, not a consumer product name or the profile's display name.
- **Deployment** is usually blank; Azure uses your deployed resource name.

Connection tests and real requests can consume paid quota. [Set provider-side limits](../TOKEN-USAGE-AND-BILLING.md) first. A consumer ChatGPT, Claude or Gemini subscription does not necessarily include API credits.

## OpenAI

Create an API project and key in the [OpenAI platform](https://platform.openai.com/). Choose a currently available text model from the [model catalog](https://developers.openai.com/api/docs/models).

| Field | Value |
|---|---|
| Name | `OpenAI assistant` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | `https://api.openai.com/v1` |
| API mode | Responses API |
| Model | Exact API ID of the text model your project can access |
| Deployment | Blank |
| API key | Your OpenAI project key |

Save and assign the profile to Chat. A separate Utility assignment is optional. Start with default limits and a short prompt, then check the model's documented context and pricing before larger tasks. Leave temperature, top-p and reasoning options unset when the model does not support them.

The endpoint is a **base URL**: do not append an individual `/responses` or `/chat/completions` operation.

### GPT-6 Astra and GPT-6.1 Sol

For complete coding, research or business projects, use the same profile recipe with an exact model ID your API project can access:

| Model | Model field | API mode |
|---|---|---|
| [GPT-6 Astra](https://developers.openai.com/api/docs/models/gpt-6-astra) | `gpt-6-astra` | Responses API **required for tool calling** |
| [GPT-6.1 Sol](https://developers.openai.com/api/docs/models/gpt-6.1-sol) | `gpt-6.1-sol` | Responses API **required for tool calling** |

Both models require Responses for tool calling. GPT-6.1 Sol can accept Chat Completions requests without tools, but that route is not suitable for an Atraium assistant that needs to act. Do not select it merely because a plain text connection test succeeds.

Leave unsupported sampling options unset. If you explicitly choose a reasoning effort, use a documented value for that model; neither of these models accepts `none` or `minimal`. Check current pricing and account limits before delegating a long project.

After saving the profile, test an actual low-risk action:

```text
Save a workspace note titled Model setup check with the three deliverables for
an internal service-desk application. Do not edit files or call external services.
```

Confirm that the note exists in **Notes**, then use a bounded task in a working folder to assess coding/tool reliability. [Complete-project examples](use-cases.md).

## Anthropic Claude

Create an API key in the [Claude Console](https://platform.claude.com/) and copy an available model's exact ID from the [Claude model list](https://platform.claude.com/docs/en/models/overview).

| Field | Value |
|---|---|
| Name | `Claude assistant` |
| Provider | Anthropic Claude |
| Purpose | Text generation |
| Endpoint | `https://api.anthropic.com` |
| Model | Exact current Claude API model ID |
| Deployment | Blank |
| API key | Your Anthropic API key |

Use Atraium's native **Anthropic Claude** provider for the Messages API. Do not choose OpenAI compatible or append an OpenAI operation path for this service.

Claude profiles serve Chat and Utility. Configure another suitable provider for images, embeddings or voice; a text profile does not supply those capabilities.

### Claude 5.5 for project work

Use the native profile above with `claude-opus-5-5` or `claude-sonnet-5-5`, subject to your account's model access. [Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) and [Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) are options for agentic coding and knowledge work.

Keep unsupported options unset: the 5.5 models do not use the older temperature/top-p/top-k controls, and their thinking cannot be disabled. Do not reuse those settings from an older Claude profile. Use **Test connection** and a harmless note-saving request before a larger project; a model catalog listing is not an Atraium compatibility certification.

## Google Gemini

Create a key in [Google AI Studio](https://aistudio.google.com/) and choose a current text model from the [Gemini catalog](https://ai.google.dev/gemini-api/docs/models).

| Field | Value |
|---|---|
| Name | `Gemini assistant` |
| Provider | Google Gemini |
| Purpose | Text generation |
| Endpoint | `https://generativelanguage.googleapis.com` |
| Model | Current text model ID available to your Google AI API key |
| Deployment | Blank |
| API key | Your Google AI API key |

This uses the native Gemini API, not an OpenAI proxy or a Vertex AI service-account connection. Save and assign it to Chat; Utility can use Chat or a separate suitable profile.

Gemini's image, embedding, speech and realtime features require appropriate specialized models and assignments. Do not copy a text-only model into every capability. If an older installation suggests a retired model, choose a current compatible replacement and test a small request.

[Google API key guidance](https://ai.google.dev/gemini-api/docs/api-key)

## Azure OpenAI

Deploy a chat model in your Azure resource first. Copy its resource endpoint, key, underlying model ID and **deployment name** from Azure. Atraium does not create the deployment for you.

| Field | Example |
|---|---|
| Name | `Azure team assistant` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | `https://YOUR-RESOURCE.openai.azure.com/openai/v1` |
| API mode | Responses or Chat Completions, as supported by the deployed model **with tools** |
| Model | The deployed model's API identifier |
| Deployment | Your actual deployment name, such as `team-chat` |
| API key | That Azure resource's key |

Replace `YOUR-RESOURCE` and `team-chat` with your values. The deployment name can differ from the underlying model ID; requests must target your deployment. Use the unified v1 base endpoint rather than a complete dated per-operation URL.

Choose the route supported by your deployment for **tool calling**, not just text generation. Some models require Responses for tools; GPT-6.1 Sol is one example. Use Responses only with a deployment that supports it, and choose another compatible model if that route is unavailable. Availability, region, quota and pricing depend on your Azure resource. This example uses resource-key authentication; entering an endpoint does not configure managed identity or a service-account credential chain.

[Azure OpenAI v1 API guidance](https://learn.microsoft.com/en-us/azure/foundry/openai/api-version-lifecycle?view=foundry-classic)

## Other OpenAI-compatible services

Use this recipe for a hosted provider, gateway or self-hosted server that explicitly offers OpenAI-compatible chat.

| Field | Example |
|---|---|
| Name | `Hosted assistant` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | The service's documented base URL, for example `https://models.example.com/v1` |
| API mode | Chat Completions API, unless the service explicitly supports Responses |
| Model | The exact model ID returned by that service |
| Deployment | Blank unless the service requires a deployment |
| API key | The key/token issued by that service |

The example domain is illustrative. Use your actual service endpoint and its own key—not an unrelated OpenAI key.

“OpenAI compatible” does not guarantee identical streaming, tool calls, reasoning options, context limits or media support. Test a short text request, then a harmless tool request such as saving a workspace note. Select a model and server that support tool calling before allowing file edits or device actions.

For a model running on your own computer, follow the [LM Studio and Ollama guide](local-models.md).

## Web research with Brave Search

**Web grounding is separate from model profiles.** Create a [Brave Search API account](https://api-dashboard.search.brave.com/) and add its key in the wizard's **Web grounding** step or corresponding settings section.

| Setting | Value |
|---|---|
| Search endpoint | `https://api.search.brave.com/res/v1/web/search` |
| Grounding API key | Your Brave Search API key |

You can use OpenAI, Claude, Gemini or a local model for Chat while Brave supplies search. Research may therefore send queries and retrieved content to more than one service. Search usage has its own pricing and quota.

Try:

```text
Compare three options for a small business password manager using current official
pricing and documentation. Link the sources, distinguish facts from assumptions,
and save the recommendation as a workspace note. Do not sign up or buy anything.
```

[Brave Search API documentation](https://api-dashboard.search.brave.com/app/documentation/web-search/get-started)

## Useful combinations

| Your goal | Configuration |
|---|---|
| Build a complete app | A capable coding/tool model, a writable project folder, file/command tools and the project's SDK/test tooling. |
| Complete a project costing | A reasoning/tool model, supplied scope/rates/quantities, spreadsheet/PDF tools and an output folder. |
| Prepare a launch package | A suitable text model, approved product/pricing inputs, research access where needed and presentation/document tools. |
| Coordinate a team | A Supervisor workspace with focused assignments, suitable tool-capable models and shared delegation limits. |
| Simplest start | One suitable text profile assigned to Chat; Utility and other optional capabilities left unassigned. |
| Local document work | Local Chat, with Utility unassigned or local; only necessary file access; no remote search or extensions. |
| Current research | Your preferred text profile plus a separate Brave Search key. |
| Text with artwork | A text profile plus a separate image-generation profile. |
| Compare model quality or cost | Several text profiles; select one for a Room or a specific Workspace. |
| Speak to an assistant | Suitable transcription/speech or realtime profiles and device permissions. |

[Images and voice](images-and-voice.md) · [Workspaces and tools](workspaces-and-tools.md)

## If a connection fails

| Symptom | Check |
|---|---|
| Unauthorized/forbidden | Correct service key, account access and base endpoint. |
| Model or deployment not found | Exact API model ID; for Azure, actual deployment name. |
| Unsupported route or parameter | API mode, native provider choice, sampling/reasoning options. |
| Rate limit or quota exceeded | Provider dashboard, credits, project limit and model/deployment quota. |
| Profile saves but Chat is unavailable | Capability assignment, not only profile creation. |
| Short requests work but larger ones fail | Actual context and request limits, model memory and remaining quota. |

A model name that exists in a catalog is not a guarantee of compatibility with every request option in your installed preview. Verify it with small, low-risk work.

[Quick start](../GETTING-STARTED.md) · [Troubleshooting](troubleshooting.md) · [Documentation](README.md)
