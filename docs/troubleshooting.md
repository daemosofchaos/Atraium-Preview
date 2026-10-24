# Troubleshooting

Find the part that failed: installation, provider connection, capability assignment, tool availability, folder access or output format. A working Chat connection does not prove that images, speech or web grounding are configured.

**Do not delete application data or reset saved projects as a first repair step.** Remove keys, private endpoints and sensitive content before sharing diagnostics.

## Installation and startup

| Symptom | What to check |
|---|---|
| Windows warns about the package | Official release origin and SHA-256 checksum; organization policy on a managed device. Do not disable system-wide protection. |
| Portable app cannot find files or will not start | Extract the whole ZIP, keep accompanying files/folders and launch the extracted executable—not one inside the ZIP. |
| Android cannot install the APK | Android 7.0+ and supported architecture; permission for the downloading app to install packages, available storage and device policy. |
| An update or restore is failing | Keep a backup and report the exact error before removing existing app data. |

Use only [official downloads](../README.md#download). [Installation instructions](../GETTING-STARTED.md#install-atraium).

## Chat is unavailable after setup

Create and save a **Text generation** profile, then assign it to **Chat** and **Utility**. Both are required by first-run setup; the same profile can serve both.

Saving or testing a profile alone does not assign it. Check the active Room/Workspace model choice if only one project fails.

[Model setup](model-setup.md#create-and-assign-a-profile).

## Provider errors

| Error or symptom | What to check |
|---|---|
| 401/403, unauthorized or forbidden | Correct service-specific API key, account/model access and base endpoint; a consumer chat login is not an API key. |
| 404 or model/deployment not found | Exact API model ID and, for Azure, actual deployment name. |
| Unsupported route | Responses vs Chat Completions for compatible endpoints; native Claude/Gemini provider choice. |
| Unsupported parameter | Remove unsupported sampling/reasoning options and use the model's documented limits. |
| 429, rate limit or quota | Provider credits, project limits, model access and request/deployment quota. |
| Connection refused or timeout | Server running, reachable address, firewall/proxy and trusted TLS certificate. |
| A small test works, a large request fails | Actual context/input limits, available server memory, request size and remaining quota. |

Use a **base endpoint**, not a complete per-operation URL. Check current provider model lists if an old profile names a retired model. A successful connection test is not a guarantee of streaming, tool calls or media support.

Tests and retries may be billable. Avoid repeating a large failing request while diagnosing it. [Provider recipes](model-setup.md).

## A local model works in its own app but not in Atraium

Start the OpenAI-compatible server, copy its exact model ID and use **Chat Completions API** initially. Leave unsupported provider-specific options unset.

In LM Studio, use the real token if authentication is enabled; a placeholder only applies to an unauthenticated local server. With Ollama, use the actual installed model tag and check that the server is running.

For a small model, try **Use basic Chat Completions prompt for small local models** and a short request. This reduces overhead but cannot add missing tool support. If the server rejects system-role messages after the first position, try **Update system message with current-turn context** in its Chat Completions context caching settings.

[Local model setup](local-models.md).

## The phone cannot reach a model on the PC

On Android, `localhost` and `127.0.0.1` refer to the phone. Use the model host's reachable address and check the connection from the device running Atraium.

Confirm server network settings, authentication, firewall and certificate trust. Use HTTPS or a properly secured private connection; do not expose an unauthenticated inference port to the internet or disable certificate verification.

Remote inference does not give the phone Windows desktop tools. [Connect another device](local-models.md#use-a-server-from-android-or-another-computer).

## Chat works, but current web research does not

Web grounding uses **Brave Search**, separately from model profiles. Check its API key, endpoint, credit/quota and relevant tool availability. Changing the Chat model does not repair a missing Brave key.

A website may block retrieval or return incomplete text. Ask the assistant to disclose missing evidence and use alternative primary sources—not to treat an unverified snippet as a confirmed fact.

[Set up Brave](model-setup.md#web-research-with-brave-search).

## A tool is missing or unavailable

- **Gateway** means discoverable, not disabled. Ask for the result in ordinary language.
- **Disabled** prevents the action from running.
- Check Room defaults, Workspace overrides and per-tool choices in **Tools & access**.
- Check provider/integration configuration and device support for optional actions.
- Direct routing does not grant access to files or enable a disabled action.

An assistant may describe a saved note or action without actually calling a tool. Confirm that the model/server supports tool calling and that an actual record or result exists.

For MCP, check the server endpoint or desktop command, required runtime, credentials and discovery. An empty Plugins page is normal when no plugins are installed.

[Access and routing](workspaces-and-tools.md#understand-tool-availability-and-routing).

## A file cannot be read or saved

Confirm the specific folder is approved and the destination is valid. Use a normal filename and accessible path; export actions reject unsafe names, traversal and link-based destinations.

Choose another name if the file already exists. Overwriting requires an explicit request. Do not grant an entire drive just to fix one export.

For a batch failure, read which files were saved before retrying. An extension change is not a conversion. [Export guide](documents-and-exports.md#save-messages-and-original-files).

## A PDF fails or has unexpected spacing

| Symptom | Remedy |
|---|---|
| Desktop browser missing | Install/update Edge or Chrome; no browser is downloaded automatically. |
| HTML rendering requested on Android | Use the structured PDF generator instead. |
| Missing font or image | Use accessible local assets or embedded data; remote resources are blocked. |
| A JavaScript chart is blank | Supply static SVG or a rendered image; scripts do not run. |
| Unexpected margins | The document preset supplies recurring 16 mm margins; use explicit page styling for different requirements. |
| Large blank areas or split content | Reduce oversized figures/rows and avoid keeping a whole long section together. |
| A precise full-bleed layout is changed | Request print preset none and supply complete print CSS. |

A row taller than a page cannot stay intact. Keep the HTML source for revisions rather than editing an HTML-generated PDF through legacy structured tools. On Windows, legacy authoring must be explicitly enabled when needed.

[PDF guide](documents-and-exports.md#create-a-pdf-from-html).

## Images or voice fail

Check that a compatible specialized profile is assigned to the relevant capability, not just Chat. Review model access, size/format/quality settings, credits and device permissions.

For a self-hosted image model, first verify the server works independently. ComfyUI needs API-format workflow JSON, the exact prompt placeholder and all required nodes/models. A normal editor export is not interchangeable with an API-format export.

Try one standard-size image or a short recording. Do not automatically change to a higher-cost model to repair a failure. [Images and voice](images-and-voice.md).

## A response stopped after closing the app

Navigating between workspaces can leave a text response active. Closing the application is different and can interrupt it. Check the saved conversation, notes, tasks and files before asking for a retry.

Stop is cooperative. It does not roll back external effects, erase a saved file or guarantee that an already sent request will not be billed.

## Backup restored work but not keys

Secure credentials are kept separately and excluded from normal backup payloads where applicable. Re-enter required provider/integration keys, test the connections and save settings before continuing.

Do not publish a backup or unredacted settings as a bug report. [Privacy](../PRIVACY.md).

## Still need help?

Follow [Support](../SUPPORT.md) with the preview version, device/OS, package type, affected area, provider category/API mode and smallest reproduction. Include exact visible errors only after removing secrets and sensitive data.

[Documentation](README.md) · [Quick start](../GETTING-STARTED.md) · [Security](../SECURITY.md)
