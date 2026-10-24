# Images and voice

Image and audio features use specialized profiles independently of Chat. You can keep one provider for conversation and another for artwork, transcription or spoken output.

Configure only what you need. Check model access, current pricing and supported options before generating media; repeated outputs and revisions can incur additional charges.

## Image generation

### Hosted image models

Open **Setup & settings → Model providers** and create a profile with purpose **Image generation**.

| Service | Provider | Endpoint | Model configuration |
|---|---|---|---|
| OpenAI image API | OpenAI compatible | `https://api.openai.com/v1` | Choose an image family supported by your installed preview and an API model your account can access. |
| Gemini image API | Google Gemini | `https://generativelanguage.googleapis.com` | Use a suitable native image-generation model, not a text-only Chat model. |

Enter the service's API key, save the profile and assign it to **Image generation** in the wizard's **Memory and images** step or the capability settings. OpenAI-compatible image profiles have an **Image generation option** panel with image-model settings.

The published 0.4.2 preview includes GPT Image 2 support and compatible earlier image families; select from the installed editor rather than assuming that every newly announced model is supported. Check the provider's current availability and do not use a retired model just because an older profile names it.

Try one image:

```text
Generate one wide editorial image of a train crossing a green valley in morning
light. Use natural colors and leave space for a headline. Do not add text or make
extra variations.
```

An image appears as a conversation attachment. Save/download the existing result without asking for another generation.

### ComfyUI image server

Use this when you already have a working ComfyUI image workflow and its required models.

1. Install and configure [ComfyUI](https://www.comfy.org/) using its official guidance. Load the required models/nodes and confirm that the workflow generates an image in ComfyUI.
2. Export the workflow in **API format**, not the normal visual-editor save format. Current interfaces use **File → Export Workflow (API)**; older versions may label it **Save (API Format)** and require developer options.
3. In the exported JSON, replace the positive prompt's complete text value with the exact placeholder below. Configure other supported placeholders only where that workflow accepts them.

```text
{{prompt}}
```

4. Add a **ComfyUI** profile in Atraium with purpose **Image generation** and the server's base address, normally `http://127.0.0.1:8188` for a default local server.
5. Paste the exported JSON into **ComfyUI workflow → API workflow JSON**, save and assign it to Image generation.
6. Ask for one small image to check the setup before larger output.

The prompt placeholder is required and replaces an entire input value, not part of a larger sentence. The editor also supports exact placeholders for width, height, seed and batch size:

```text
{{width}}
{{height}}
{{seed}}
{{batch_size}}
```

For an image-editing workflow that supports reference/mask inputs, the relevant values are:

```text
{{input_image}}
{{mask_image}}
```

These placeholders do not install nodes, change a text-to-image graph into an editing graph or download model weights. Keep the workflow's existing model filenames and compatible settings. Use only trusted nodes and licensed model assets.

[ComfyUI documentation](https://docs.comfy.org/) · [API-format export guidance](https://docs.comfy.org/development/api-development/workflow-api-format)

### Stable Diffusion WebUI

For a compatible image server that exposes the Stable Diffusion WebUI API:

- start the server with its API available and verify image generation in its own interface;
- create a **Stable Diffusion WebUI** profile with purpose Image generation;
- enter the base server address, commonly `http://127.0.0.1:7860` for a default local setup;
- add a credential if your protected server or gateway requires one;
- save and assign the profile to Image generation.

Text-to-image, reference editing and masks depend on the server, model and settings. A browser UI alone is not proof that its API is enabled. Follow your server distribution's current instructions rather than assuming every fork has identical options.

### Edit and save images

Attach a reference or select a generated image, then request a focused edit:

```text
Edit this image to simplify the background and use late-afternoon light. Keep the
subject and camera angle. Produce one revised image.
```

Generation, editing and mask support vary. A mask must match the reference dimensions when required; supported sizes, transparency and quality settings also depend on the model.

For local servers, keep them private. Protect remote endpoints with authentication and HTTPS. On Android, localhost is the phone—not your desktop GPU server. [Remote server setup](local-models.md#use-a-server-from-android-or-another-computer).

## Speech input and output

These are separate capabilities:

| What you want | Profile purpose and assignment |
|---|---|
| Transcribe audio or use supported voice input | **Audio to text**, assigned to Speech-to-text. |
| Produce spoken output | **Text to audio**, assigned to Text-to-speech. |
| A compatible live audio interaction | **Audio to audio**, assigned to Realtime. |

Use a compatible specialized model offered by the provider, not an ordinary Chat model ID. Configure the endpoint, required key and capability-specific model/voice settings, then save and assign the profile in the wizard's **Realtime and speech** step or LLM settings.

OpenAI-compatible and native Gemini routes support the features their configured APIs and models provide. Claude's text profile does not supply these audio capabilities. An arbitrary local chat server does not automatically provide speech or realtime APIs.

Start with a short, non-sensitive recording or brief spoken response. Review transcription accuracy, chosen voice, device volume and provider usage before a longer session. Microphone permission is requested when needed; denying it prevents recording but does not prevent ordinary text chat.

Audio requests can send recordings or transcripts to the configured service. Realtime sessions can create usage continuously while active; stop them when finished and monitor the provider dashboard.

## If a feature is unavailable

Confirm the profile's **purpose and capability assignment**, not just its saved name. Check model access, endpoint compatibility, quota, device permissions and relevant tool availability.

Do not silently switch to a more expensive model to repair a failed generation. [Troubleshooting](troubleshooting.md) covers common failures.

[Model setup](model-setup.md) · [Save original files](documents-and-exports.md#save-messages-and-original-files) · [Billing](../TOKEN-USAGE-AND-BILLING.md) · [Documentation](README.md)
