# Practical uses for Atraium

Give an assistant a complete piece of work: a working application, an auditable project costing or a launch package with research and finished documents. These examples use ordinary prompts, not special commands. They assume Chat is configured with a suitable tool-capable model. Utility is optional and uses Chat for supporting work when no ready Utility profile is assigned.

Create a separate workspace for a distinct project and provide the necessary tools and access. Smaller examples follow the complete-project briefs; they are useful for learning a feature or checking a new connection. Tool use and follow-up model requests can consume additional provider quota.

## Build a complete application from a brief

**You need:** Windows, a capable coding/tool model, a new writable project folder, file and command tools, and the SDKs required by your chosen stack. This example uses the [.NET 10 SDK](https://dotnet.microsoft.com/en-us/download/dotnet/10.0). Allow dependency restore and build/test commands within that folder; Atraium does not install the development environment for you.

Choose a Coding room workspace and give the assistant the outcome, features and boundaries:

```text
Build a working internal service-desk application in the approved project folder.
Use C#, ASP.NET Core/Blazor on .NET 10 and SQLite. Keep component logic in
code-behind files and styles separate from markup.

Include:
- Staff login and administrator access; no hard-coded passwords or API keys.
- Tickets with category, priority, status, assignee and a history of changes.
- Search and filters, a workload dashboard and CSV export.
- Responsive screens, accessible form labels, validation and useful error messages.
- A local demo dataset, database setup/migrations, automated tests and a README
  with exact setup, run and test instructions.

Create the actual project files, restore the required dependencies, implement the
features, build and test the application, and fix issues you find. Check the main
user journeys with the available tools. Keep a concise brief and verified task
status in this workspace. Make reasonable implementation decisions and continue
until the deliverables are complete or a missing requirement/access blocks you.

Do not install system-wide software, modify unrelated folders, add paid services,
deploy to production, publish or commit. Finish with the project location, run
instructions, build/test results and any limitations that still need review.
```

**What you should receive:** actual source and configuration files, a usable local application, meaningful tests and a handover you can follow. The assistant should repair failures it can address, rather than stop after generating code. If a required SDK or credential is missing, it should identify the specific blocker and preserve the completed work.

Use a working copy for an existing repository and review the changes before merging or deploying. A successful build is necessary evidence, not a security audit or proof that every user journey works.

[Choosing a model and delegating responsibility](independent-assistants.md) · [Folder and tool access](workspaces-and-tools.md#grant-a-working-folder-not-an-entire-drive)

## Produce a complete project costing

**You need:** a model suited to calculations and document work, spreadsheet/PDF tools, and an approved output folder. For the styled HTML-to-PDF report, use Windows with Edge or Chrome installed. Attach the three sample files below, or save them in an approved input folder:

- [Project brief](examples/project-costing/brief.md): scope, fixed charges, contingency, tax and budget assumptions.
- [Labour](examples/project-costing/labour.csv): activities, hours and rates.
- [Materials](examples/project-costing/materials.csv): quantities, units and prices.

The sample is a **synthetic twelve-desk office network refresh**, with prices in ZAR. It contains no supplier quotes or customer data. For real work, supply your own scope, quantities, rate cards and quotations; the assistant should distinguish those from estimates.

```text
Produce a complete costing for the office network refresh using the attached brief,
labour.csv and materials.csv. Use only these inputs; do not fetch prices or present
the sample rates as supplier quotes. Keep the sources traceable.

Create an Excel workbook with editable inputs, a work breakdown, line-item
calculations, labour/material/fixed-cost subtotals, contingency, tax and a budget
comparison. Use working formulas, not just typed totals. Follow the brief's exact
contingency and tax bases. Include low/base/high scenarios by varying labour hours
only by minus/plus 15%; keep rates, materials and fixed charges unchanged.

Create a client-facing PDF with scope, cost breakdown, a scenario chart, assumptions,
exclusions and the proposed budget. Retain the source HTML. Save the original
workbook, PDF, source and a summary CSV in the approved output folder. Keep a
costing note and actionable review tasks in this workspace.

Check the arithmetic and reconcile the workbook, CSV and PDF. Identify missing
quantities, prices or scope without inventing verified facts. Continue through
calculation, document generation and checks; do not stop at a narrative estimate.
Do not overwrite existing files, contact suppliers, purchase or publish anything.
```

**Check the sample result:** labour **R29,600**, materials **R14,060** and fixed charges **R1,800** give a base cost of **R45,460**. With the specified 10% contingency and illustrative 15% tax, the total is **R57,506.90**, leaving **R2,493.10** against the R60,000 budget.

The labour-hour scenarios should total **R51,890.30** (low) and **R63,123.50** (high). The high case exceeds the budget by **R3,123.50**. These figures provide a useful reconciliation check; the workbook should still contain formulas that respond to changed inputs.

**What you should receive:** a complete, editable costing package—not just a total in chat. Check the assumptions, source dates, unit conversions, tax treatment and scope completeness before using a real estimate. The sample's tax rule is an explicit exercise assumption, not jurisdiction-specific tax advice or a binding quotation.

[Documents and exports](documents-and-exports.md) · [Define completion](independent-assistants.md#define-what-completion-means)

## Prepare a complete launch package

**You need:** a product brief, target audience, approved pricing/cost inputs, a capable text model, presentation/document tools and an output folder. Add a separate Brave Search key for current research. Image generation is optional and needs its own model and explicit budget.

Create a workspace for the launch and attach your source material:

```text
Prepare a complete launch package for the product described in the attached brief.
Use its target audience, feature scope and approved pricing/cost inputs.

Research relevant competitors using current official sources. Produce a market
assessment that distinguishes verified facts, our assumptions and evidence gaps.
Develop clear positioning, a customer-facing value proposition and a launch plan
with dependencies and measurable objectives. Do not invent customer endorsements,
market-share figures or agreed dates.

Create an editable presentation, a concise PDF briefing and a budget/scenario
workbook using the supplied figures. Check that factual claims and numbers agree
across the deliverables. Save the original files and sources in the approved folder,
record the positioning decision in a note and create the launch tasks in this
workspace. Make reasonable decisions and deliver the complete package, not only
an outline. Highlight decisions that need my review.

Use supplied artwork or simple document graphics. Do not generate paid media,
contact customers, create accounts, buy advertising, publish or send messages.
```

Without web grounding, replace live research with supplied competitor material and require its dates and limitations to be stated. You can authorize artwork separately once the message and budget are agreed.

**What you should receive:** a coherent set of usable files, sourced claims, reconciled figures and visible next steps. This is where coding, research, estimating and communication can meet in the same project environment. Workspaces keep the records together; you remain responsible for approving commercial claims and publication.

[Research setup](model-setup.md#web-research-with-brave-search) · [Independent assistants](independent-assistants.md)

## Coordinate a repository review with a team

**You need:** 0.5.0 Preview 1 or later, a suitable tool-capable text model, repository access and a workspace with **Enable Supervisor delegation** saved in its settings. Turn off **Allow nested Supervisors** for this first two-worker example, and review the shared limits.

Supply the exact repository path. Use a working copy and disable mutation or command tools if the review must be strictly read-only.

```text
Coordinate a review of the repository at the path I supplied. Create two workers:
one to inspect automated tests and one to inspect user documentation. Neither may
edit files, run commands, browse externally or delegate further.

Give each worker a self-contained brief. Ask for findings tied to specific files,
the evidence checked and any information it could not verify. Collect the results,
check the important claims and resolve disagreements before producing one report.

Save the combined findings as a note in this workspace. Create prioritised tasks
for confirmed gaps, distinguishing observed problems from suggestions. Finish with
the source paths, what was reviewed and what still needs human review.
```

**What you should receive:** separate worker conversations and results, followed by a consolidated, evidence-based report and saved follow-up tasks. Follow the hierarchy in **Supervisor assignments** and open individual workspaces for the details.

For a larger launch package, a Supervisor can assign research, positioning and presentation work to different workers. If a research lead needs its own team, enable nested supervision within the shared limits. Keep outputs in separate locations and give the final reconciliation to one owner. More workers can increase cost and coordination; use them only where the work divides usefully.

[Delegation setup, limits and controls](supervisor-workspaces.md)

## Turn meeting notes into a project plan

**You need:** a working Chat profile, with Workspace notes/tasks available. No web key or file access is needed.

Create a Project plan workspace and paste this illustrative brief:

```text
We need to refresh a small consulting firm's website in four weeks. One developer
is available. The site needs a homepage, service pages and a contact form. The
client will provide text and brand assets. Budget, hosting and review dates are
not agreed yet.

Save a concise project brief as a workspace note. Create next-step tasks to confirm
scope, collect content and agree review milestones. Identify assumptions and
questions. Do not invent owners or due dates, browse the web or change files.
```

**Look for:** an actual note and tasks in the workspace, not just a checklist in chat. Edit the records yourself or ask for a specific update:

```text
We agreed to exclude a customer portal. Update the project brief and keep the open
budget question. Mark only the scope-confirmation task as complete.
```

## Compare products with current sources

**You need:** a text model, a separate **Brave Search key**, and available web research tools. Use a Research board workspace.

```text
Compare three password managers for a five-person business. Check current official
pricing, shared-vault features, account recovery and export options. Link sources
and state the date checked. Separate verified facts from assumptions and explain
anything you could not verify.

Create a comparison visual if useful, save the recommendation as a workspace note,
and add two follow-up tasks. Do not create accounts, contact vendors or buy anything.
```

**Look for:** sources you can open, clear differences, disclosed evidence gaps and a saved recommendation. Check the facts important to your purchase before acting; search results are not a substitute for reading current terms.

Without Brave configured, use supplied documents instead and ask the assistant not to claim live research. [Set up web grounding](model-setup.md#web-research-with-brave-search).

## Explore a CSV and create a chart

**You need:** an attached CSV or approved folder access, attachment/file reading and inline visual tools. No web research is needed.

Save and attach the [sample monthly sales CSV](examples/monthly-sales.csv), then ask:

```text
Read the attached monthly-sales.csv. Calculate total revenue, total cost and profit
for each month and for the full period. Create a line chart of monthly revenue and
cost. Label the figures as illustrative values, with no currency assumed.

Save the main findings as a workspace note. Do not invent forecasts or fetch data.
```

**Check the sample totals:** revenue **90,300**, cost **56,200**, profit **34,100**. These are synthetic values, not operational or financial advice.

Use **Show data** to inspect a visual, **Copy CSV** to reuse its data or **Save PNG** to add it to a report. **Ask about this** adds a follow-up to your draft for review before sending. Charts are saved snapshots, not live dashboards.

## Create a client-ready PDF

**You need:** Windows, installed Edge or Chrome, PDF tools, and an approved folder for source/output files. HTML-to-PDF is a desktop feature; Android uses the structured PDF tools instead.

Use the website brief from the [project-planning example](#turn-meeting-notes-into-a-project-plan):

```text
Turn the saved website project brief into a client-ready PDF. Use ordinary HTML
with a restrained navy-and-teal design, a deliverables table and clear next steps.
Retain the source HTML in the approved output folder for later revisions. Use the
default document print preset and save the resulting PDF alongside the source.
Use only static local or embedded assets; do not invent agreed dates or prices.
```

Or save the [sample project-brief.html](examples/project-brief.html) locally and ask Atraium to generate a PDF from that approved file.

**Look for:** a downloadable PDF, readable table headers and the retained HTML source. Default print settings handle recurring margins and common table pagination. Review the final pages before sharing; very large figures or rows still need sensible sizing.

[PDF setup and print behavior](documents-and-exports.md#create-a-pdf-from-html).

## Review a small code project

**You need:** Windows for the broadest local tool coverage, a suitable text model and permission to read the specific project folder. Keep a backup or use a disposable copy.

Create a Coding room workspace:

```text
Read the approved project folder. Identify the language, framework and build/test
commands from its own files. Explain the structure and identify three concrete
correctness or maintainability issues, with file references.

Save the findings as a workspace note. Do not edit files, install packages or run
commands yet.
```

**Look for:** findings based on actual files, rather than generic recommendations. Then authorize a small, specific change:

```text
Fix the first issue with a minimal change. Use the existing project conventions
and relevant tests. Run only the necessary build/test commands, then summarize
what changed and the result. Do not delete unrelated files, commit or publish.
```

Builds and tests require the project's own SDKs and tools on your machine. Atraium does not make an arbitrary project buildable or isolate risky commands. Review changes before using them.

## Save a handover without regenerating it

**You need:** a saved conversation or existing artifacts, Workspace export tools and an approved destination folder.

```text
Export the final recommendation and checklist from this workspace into one UTF-8
file named handover.md in the approved handover folder. Preserve the complete
stored message text and its order; do not paraphrase it or overwrite an existing file.

Save the existing report PDF and selected image there in their original formats.
Do not generate new versions.
```

**Look for:** exact text exports and copies of the existing files. Message export does not include attachment bytes or rendered charts; save those separately. Choosing a different extension does not convert Markdown into PDF, HTML or code.

[Export behavior and limits](documents-and-exports.md#save-messages-and-original-files).

## Generate one campaign image

**You need:** a separately configured image-generation profile, model access/credit and image tools. A text-only Chat profile is not enough.

```text
Generate one wide editorial image for a sustainable-travel article. Show a train
crossing a green valley in soft morning light. Use a restrained palette and leave
space for a headline. Do not add text or create extra variations.
```

Review the image before requesting another paid generation. If the model supports editing, attach or select the reference and ask for a specific revision:

```text
Edit this image to move the lighting toward late afternoon. Keep the train, terrain
and camera angle. Produce one revised image.
```

**Look for:** the requested output count and a saveable image attachment. Saving the existing original does not require another generation. [Image setup](images-and-voice.md#image-generation).

## Work from supplied documents with a local model

**You need:** a capable local model assigned to Chat, permitted document access, and no remote capabilities enabled for this task. Leave Utility unassigned to use Chat, or assign another local profile.

```text
Read the attached meeting notes and draft a one-page summary with decisions, open
questions and next steps. Use only the supplied material. Save the result as a
workspace note; do not browse or call external services.
```

**Look for:** a summary traceable to the input, with uncertainty preserved. Short documents are a better first test than a large archive. Review every configured capability and integration if data must stay on the device; a prompt alone is not a privacy control.

[Local setup](local-models.md) · [Privacy](../PRIVACY.md)

[Quick start](../GETTING-STARTED.md) · [Workspaces and tools](workspaces-and-tools.md) · [Documentation](README.md)
