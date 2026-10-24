# Give an assistant responsibility for a complete project

Atraium is not limited to answering questions or suggesting your next step. Paired with a capable model and the right tools, an assistant can act as an **independent worker**: take a brief, make routine decisions, do the work, check its results and produce the deliverables.

You can ask for a complete application, a project costing based on supplied quotes and rates, or a research-backed launch package. You do not have to prescribe every file edit, calculation or document section.

[Build a complete app](use-cases.md#build-a-complete-application-from-a-brief) · [Produce a project costing](use-cases.md#produce-a-complete-project-costing) · [Prepare a launch package](use-cases.md#prepare-a-complete-launch-package)

## Delegate an outcome, not a sequence of clicks

An outcome-driven brief says what needs to exist when the work is finished. For example:

```text
Build a working internal service-desk application in the approved project folder.
Include staff login, ticket management, a dashboard, tests and setup documentation.
Make reasonable implementation decisions, build and test it, fix issues you find,
and continue until the agreed deliverables are complete or a real blocker remains.
```

```text
Produce a complete project costing from the attached scope, labour rates and
materials prices. Create an auditable workbook, risk scenarios and a client-facing
PDF. Check the calculations, identify missing information and retain editable sources.
```

These are requests for work, not just written answers. Depending on the task, the assistant can inspect files, research current documentation, create a project, implement code, run commands, repair failures, calculate costs and prepare finished documents. Notes and tasks keep decisions and remaining work visible alongside the conversation.

## Why choose Atraium for this work?

[OpenAI Codex](https://developers.openai.com/codex/cli) and [Claude Code](https://code.claude.com/docs/en/overview) are capable autonomous agents. They can implement features, edit files and run checks; independent work is not exclusive to Atraium.

Choose Atraium when you want **one working environment for coding, research and business projects**, with:

- **Model choice in the same app.** Configure OpenAI, Claude, Gemini or compatible local/self-hosted profiles and choose a suitable model for a Room or Workspace.
- **Persistent assistant roles.** Keep a software builder, research colleague or estimating assistant with its own instructions and selected tools, rather than rebuilding the brief for every conversation.
- **Visible, editable project records.** Manage notes, tasks, sources and generated artifacts in the workspace. You can review and change these records yourself.
- **Coding and business deliverables together.** Move from a specification to implementation, a costing workbook, a presentation and a PDF handover using the relevant built-in tools.
- **Project-specific access.** Give one workspace the tools and folder it needs without exposing the entire catalog to every assistant.

For example, the same product project can include an implemented demo, its cost estimate, customer research and a presentation. You can keep those as separate workspaces in one Room, with different model choices and instructions where useful. The value is the integrated working environment—not a claim that another agent cannot accomplish similar tasks.

## Choose a model for the responsibility

Long projects need reliable tool use, planning, error recovery and enough context for the work. A model's ability to answer a short question is not enough to establish that.

| Example model | Configuration and intended use |
|---|---|
| [GPT-6 Astra](https://developers.openai.com/api/docs/models/gpt-6-astra) | OpenAI-compatible profile using Responses API; an option for demanding coding, research and professional work. |
| [GPT-6.1 Sol](https://developers.openai.com/api/docs/models/gpt-6.1-sol) | Responses API **for tool calling**; an option for complex coding and professional work where cost matters. Its Chat Completions route does not support tool calling. |
| [Claude Opus 5.5](https://platform.claude.com/docs/en/models/opus-5-5/overview) and [Sonnet 5.5](https://platform.claude.com/docs/en/models/sonnet-5-5/overview) | Native Anthropic Claude profile; options for agentic coding and knowledge work. Use compatible current model settings, not old sampling/thinking assumptions. |
| [KAT-Coder-V2.5-Dev](https://huggingface.co/Kwaipilot/KAT-Coder-V2.5-Dev) | A self-hostable, text-only coding model through a compatible tool-capable server. It has 35B total / 3B active parameters; memory needs are not those of a 3B model. |

These are model-selection examples, not an Atraium benchmark or a guarantee that every setting, server or quantization works with your installed preview. Confirm model access and run a representative tool task before committing to a large project. Leave unsupported options unset. See [hosted model setup](model-setup.md) and [local coding model setup](local-models.md#kat-coder-for-local-software-work).

A smaller coding model can still build and improve software when the scope, context and tools suit it. It need not match a frontier model at every discipline to be useful. For a complex estimate or research package, choose a model with suitable reasoning and document skills—not simply one with “coder” in its name.

## Give it the means to finish

For substantial local work, use Windows with the required development tools or document capabilities available.

| Task | Provide |
|---|---|
| Build an app | A clear feature brief, a writable project folder, required SDKs/runtimes, file/command tools and permission to build/test. |
| Produce a costing | Scope, quantities, rates, quotes, currency/tax assumptions, document/spreadsheet tools and a destination folder. |
| Research a decision | The question, evaluation criteria, supplied sources or Brave web grounding, and the required output. |
| Prepare a presentation or report | Audience, factual source material, design requirements and applicable document tools. |

Choose a Room role and workspace instructions that favor execution. For example:

```text
Take responsibility for the agreed deliverables. Make routine decisions within the
scope and explain important assumptions. Use available tools to do the work, not
just describe it. Check results and repair issues before calling a deliverable done.
Keep the project brief and tasks current. Ask only when a missing decision, access
or credential genuinely blocks progress. Do not make purchases, publish externally
or change production systems without explicit authorization.
```

Grant only the required access in **Tools & access**. Instructions do not override permissions or make unsafe actions safe. [Workspaces and access](workspaces-and-tools.md).

## Define what completion means

Ask for evidence that fits the deliverable:

- **Application:** actual project files, setup instructions, meaningful tests, build/test results and disclosed limitations—not only code fragments or a confident summary.
- **Costing:** traceable rates and quantities, working formulas, totals that reconcile, stated assumptions, scenario differences and exclusions—not invented prices presented as verified quotes.
- **Research:** identifiable sources, a comparison grounded in evidence and explicit gaps—not a ranking unsupported by the material.
- **Documents:** usable original files, editable sources where appropriate and reviewed layout—not merely a draft described in chat.

You can review progress, steer the brief or stop the assistant. Independent work means autonomy within the agreed task and access, not unlimited authority. Keep provider-side limits in place for long, tool-rich tasks.

Closing Atraium can interrupt an active text task; this preview is not an always-on cloud worker. After an interruption, check saved progress before continuing. Running several workspaces does not isolate shared files or remove the need for final review. No model turns preview output into a certified production system or binding professional estimate automatically.

[End-to-end examples](use-cases.md) · [Model setup](model-setup.md) · [Billing](../TOKEN-USAGE-AND-BILLING.md) · [Documentation](README.md)
