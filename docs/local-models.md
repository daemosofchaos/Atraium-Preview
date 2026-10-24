# Use local and self-hosted models

Run a model in serving software such as LM Studio or Ollama, then connect Atraium to its OpenAI-compatible API. **Atraium does not download, install or start the text model for you.**

LM Studio is a convenient graphical starting point. Ollama offers a desktop application and command-line model management. A remotely hosted server uses the same connection approach, with additional authentication and network requirements.

## Choose a model that fits the job

Choose a current instruction/chat model with **tool-calling support** if you want it to save notes, create tasks or use other Atraium tools. A model that answers a text prompt may still be unsuitable for tool use.

Memory requirements depend on model size, quantization, context length and concurrent requests. A model's download size is not its total RAM/VRAM requirement. Start with a small model and modest context rather than selecting the largest model or maximum advertised context.

Smaller models can implement and improve software as well as draft or summarize, when the task and context suit them. Long inputs, broad tool catalogs and difficult recovery still demand more capability. Start with a representative task, grant the access it needs and review important results.

## LM Studio

1. Install [LM Studio](https://lmstudio.ai/) from its official website.
2. Download an appropriate instruction/tool-capable model in LM Studio and load it. Confirm it can answer a short prompt there.
3. Open the **Developer** page and start its API server. The default local OpenAI-compatible base URL is `http://localhost:1234/v1`.
4. Copy the model identifier shown by the server—not just a friendly model title.
5. In Atraium, create this profile:

| Field | Value |
|---|---|
| Name | `LM Studio local` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | `http://localhost:1234/v1` |
| API mode | Chat Completions API |
| Model | Exact identifier of your loaded model |
| Deployment | Blank |
| API key | Your server token if authentication is enabled; otherwise a non-secret placeholder such as `lm-studio` if Atraium requires a value. |

Use **Test connection**, save, and assign the profile to **Chat** and **Utility**.

To inspect model IDs without generating text, use PowerShell against an unauthenticated local server:

```powershell
Invoke-RestMethod -Uri "http://localhost:1234/v1/models"
```

If you enable **Require Authentication** in LM Studio's server settings, create an API token and put that token in Atraium's key field. The placeholder does not work against an authenticated server. Use an authenticated client when checking model IDs; do not turn authentication off just to make a test pass.

Keep the server running while using Atraium. Restart or reload the model in LM Studio if the server reports that no model is available.

[OpenAI-compatible API](https://lmstudio.ai/docs/developer/openai-compat) · [LM Studio authentication](https://lmstudio.ai/docs/developer/core/authentication)

## Ollama

Install the current version of [Ollama](https://ollama.com/download) from its official website and start it. Its default local API listens on port 11434.

As a small-model example, [Qwen3.5 4B](https://ollama.com/library/qwen3.5:4b) is listed with tool support. It is an example, not a guarantee of performance on your hardware or reliable use of every Atraium tool. Check the model's current requirements and licence before downloading it.

Download and check the model in PowerShell:

```powershell
ollama pull qwen3.5:4b
ollama list
```

You can try it directly before connecting Atraium:

```powershell
ollama run qwen3.5:4b "Say hello in one sentence."
```

Create the Atraium profile:

| Field | Value |
|---|---|
| Name | `Ollama local` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | `http://localhost:11434/v1` |
| API mode | Chat Completions API |
| Model | `qwen3.5:4b`, or the exact installed model name from your server |
| Deployment | Blank |
| API key | Non-secret placeholder `ollama` for the default unauthenticated local server; a real token if you use a protected gateway. |

Use **Test connection**, save and assign it to Chat and Utility. If Ollama is not already running, start the application or run this in a separate terminal:

```powershell
ollama serve
```

Do not start a second server on an occupied port.

To list the OpenAI-compatible model IDs without generation:

```powershell
Invoke-RestMethod -Uri "http://localhost:11434/v1/models"
```

Use the exact installed tag. Downloading a model does not mean it is already loaded into memory; the first request can be slower. A cloud-only model tag is not an offline model simply because it appears in Ollama.

[Ollama quick start](https://docs.ollama.com/quickstart) · [OpenAI compatibility](https://docs.ollama.com/api/openai-compatibility)

## KAT-Coder for local software work

[KAT-Coder-V2.5-Dev](https://huggingface.co/Kwaipilot/KAT-Coder-V2.5-Dev) is an open-weight, **text-only coding model** you can serve locally or on your own GPU server. It is the self-hostable Dev checkpoint, not the similarly named hosted KAT services. You can use it for implementation, repository changes and build/test repair—not only code suggestions.

It has **35B total and 3B active parameters**. The active-parameter figure describes computation, not how much model memory you need. Quantization and context affect memory; a long context also consumes resources.

### Graphical setup with LM Studio

1. Use a current LM Studio runtime that supports the model's architecture. Check the selected model publisher's compatibility guidance before downloading.
2. Select a suitable GGUF conversion, such as the [community conversions by bartowski](https://huggingface.co/bartowski/Kwaipilot_KAT-Coder-V2.5-Dev-GGUF). These are community packages, not Kwaipilot's original weights. Choose a quantization your hardware can load.
3. Load the model and start the API server as described in [LM Studio setup](#lm-studio). Copy the exact ID exposed by the server.
4. Create an OpenAI-compatible Text generation profile using Chat Completions, your server's base URL and that model ID. Assign it to Chat and Utility.

For scale, the community `Q4_K_M` file is about **21.39 GB on disk**; this is not a minimum VRAM specification or the total memory needed to run it. A download that fits on disk may still exceed available memory. If the model does not load, check runner/architecture support and memory before changing Atraium settings.

### GPU server setup with vLLM or SGLang

Follow the **current serving instructions in the official model card** for your operating system, hardware and runner. Its examples include settings for large GPU servers; do not copy their GPU count or maximum context without sizing your own machine.

Tool use requires a suitable tool-call parser. The model card specifies `qwen3_coder` for vLLM/SGLang; vLLM also needs automatic tool choice enabled and the language-model-only setting for this checkpoint. A server that returns plain text may still fail to produce valid tool calls if configured incorrectly.

Once the model is served, enter:

| Field | Value |
|---|---|
| Name | `KAT coding assistant` |
| Provider | OpenAI compatible |
| Purpose | Text generation |
| Endpoint | Your server base URL, for example `http://localhost:8000/v1` on the same PC |
| API mode | Chat Completions API |
| Model | Exact served ID; typically `Kwaipilot/KAT-Coder-V2.5-Dev` unless you set an alias |
| Deployment | Blank |
| API key | Your server credential; a non-secret placeholder only for an intentionally unauthenticated loopback server. |

For a server on another device, use a protected reachable endpoint rather than `localhost`. [Network setup](#use-a-server-from-android-or-another-computer).

### Give the coding assistant a real task

Confirm a harmless tool call first, then provide a working folder, installed build tools and a bounded implementation task. Keep the relevant tool selection focused; a local coding model need not receive every business, media and integration tool.

```text
In the approved working copy, add a ticket search/filter feature. Inspect the
project's framework and conventions first. Implement the feature, add relevant
tests, run the existing build/test commands and fix failures caused by the change.
Keep the work within this folder. Do not install system-wide tools, commit or deploy.
Finish with changed files, validation results and any remaining limitations.
```

Once it handles representative work reliably, delegate a larger [complete application](use-cases.md#build-a-complete-application-from-a-brief). This is a setup example, not a benchmark or guarantee for every server, quantization or installed preview. A text-only model cannot inspect screenshots just because a desktop tool is available; choose a vision-capable model when visual inspection is essential.

## Make a small model easier to use

For an OpenAI-compatible Chat Completions profile, consider **Use basic Chat Completions prompt for small local models**. This reduces prompt overhead; it does not add tool-calling support to a model that lacks it.

Keep Room instructions brief and enable only relevant tools. Leave unsupported reasoning, temperature or other provider-specific options unset. Match input/output limits to your actual server context and available memory.

If a server rejects system-role messages except at the beginning, open **Chat Completions context caching** and enable **Update system message with current-turn context**. Use this compatibility option only when needed; it can reduce prompt-cache reuse.

Try a harmless tool request before file editing:

```text
Save a workspace note titled Local model check with three practical uses for this
assistant. Do not browse, run commands or change files.
```

Check that an actual note appears in **Notes**, rather than just a description in chat. Review model/server tool support if it does not.

## Use a server from Android or another computer

On Android, **localhost means the phone**, not the PC running your model. The same is true of any second computer.

- Keep the model server running on its host.
- Configure it to accept the intended network connection and restrict access to trusted devices.
- Use a protected reachable endpoint, for example `https://models.example.com/v1`, and its token in Atraium.
- Check firewall rules, network routing and certificate trust from the device that runs Atraium.
- Keep model/deployment IDs unchanged unless the remote server uses different names.

A private-network address such as `192.168.1.20` is only illustrative; use the host's actual address. For remote access, use authentication and HTTPS or an appropriately secured private connection. Do not expose the default unauthenticated LM Studio or Ollama port to the internet, and do not disable certificate validation to fix a connection problem.

Remote inference sends prompts and relevant context to that server. Self-hosted does not mean the data stays on the phone. Windows-specific file and application tools do not become available on Android just because the model runs on Windows.

## Keep a setup local when privacy matters

Use local profiles for both Chat and Utility, and leave remote search, media services and extensions unconfigured if the content must stay on the device. Embeddings and other optional capabilities must also use local endpoints if enabled.

After model downloads, local inference can work without cloud model calls, but Atraium's **local-first** design is not an offline guarantee for every feature. Check each configured provider and integration.

Local inference can still cost electricity, hardware resources or rented compute. [Privacy](../PRIVACY.md) · [Billing](../TOKEN-USAGE-AND-BILLING.md)

[Hosted model setup](model-setup.md) · [Troubleshooting](troubleshooting.md) · [Documentation](README.md)
