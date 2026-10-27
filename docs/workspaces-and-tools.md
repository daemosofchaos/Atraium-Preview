# Rooms, workspaces and tools

A **Room** gives an assistant its role and shared defaults. A **Workspace** keeps a particular project organized inside that Room, with its own conversation, notes, tasks and artifacts.

For example, a Business Room might contain separate workspaces for supplier research, a website refresh and monthly reporting. They can share the assistant's working style while keeping project conversations and records separate.

## Create a useful Room

Choose a clear name, a suitable text model and concise instructions. Describe the assistant's role, preferred tone and boundaries rather than trying to anticipate every possible task.

```text
Help me with small-business planning and written reports. Prefer clear language,
identify assumptions and keep agreed decisions in notes. Use tasks for requested
next steps. Do not send messages externally or spend money without my approval.
```

Instructions guide behavior; they are **not a security boundary**. Tool policy, folder permissions, provider settings and review of consequential actions matter too.

The role can also be an independent software builder or estimating assistant. Ask it to implement, check and deliver the agreed work, making routine decisions within scope instead of waiting for instructions for every step. Give it the required model, tools and project access. [Delegate complete projects](independent-assistants.md) for role instructions and application/costing examples.

## Give each project a workspace

Use the Room's workspace picker to create a workspace with a name and short purpose. Choose a blank workspace to inherit Room instructions, or a template as a starting point.

| Template | Useful for |
|---|---|
| General workspace | Everyday questions, notes and follow-up. |
| Project plan | Scope, milestones, dependencies and actions. |
| Research board | Source-backed comparisons and open questions. |
| Writing room | Audience, drafts, tone and revisions. |
| Incident triage | Symptoms, evidence, impact and recovery. |
| Coding room | Repository analysis, implementation and checking changes. |

Templates do not create provider accounts or grant access to a folder. The Room's original conversation belongs to **Main workspace**.

Room instructions suit consistent preferences. Workspace instructions suit a specific project: audience, budget, technology constraints, source folder or deliverable requirements.

## Coordinate work with a Supervisor

Enable **Supervisor delegation** in Workspace settings when the project needs a coordinated team. It works independently of the template: a Coding room, Research board or blank workspace can be a Supervisor.

The Supervisor can create specialist workspaces or assign focused work to available workspaces in the same Room. Workers retain their own conversations and records. If **Allow nested Supervisors** is enabled, a worker can organise its own team within the same shared allowances.

Review the hierarchy, status, deadlines and returned results in **Supervisor assignments**. Open a worker workspace for its full conversation. Assign separate file responsibilities and ask the Supervisor to validate and combine the results; creating a team is not itself evidence that the work is complete.

[Start a delegated project](supervisor-workspaces.md#start-your-first-delegated-project) · [Shared limits and controls](supervisor-workspaces.md#understand-the-shared-limits)

## Keep the important work easy to find

| Surface | What belongs there |
|---|---|
| Chat | Questions, exploration and feedback. |
| Notes | Briefs, decisions, findings and requirements worth keeping. |
| Tasks | Concrete actions, priorities, due dates and completion state. |
| Artifacts | Generated documents available to open or download. |
| Tools & access | Available actions, routing and relevant access settings. |

Notes and tasks are editable by you as well as the assistant. Ask explicitly for saved records when needed:

```text
Save our agreed scope as a pinned workspace note. Create three tasks for the next
milestone and describe what completion means for each. Do not invent due dates.
```

```text
Read the project brief and open tasks. Update the brief with today's decision and
mark only the task we actually finished as complete.
```

Generated images and uploaded files also appear as conversation attachments. [Save messages and original files](documents-and-exports.md#save-messages-and-original-files) when you need copies outside Atraium.

## Choose a model for the project

A Room can choose a model profile, and a Workspace can override that choice for one project. Use a local coding model for repository work, or a capable hosted model for a complex estimate or research package. Choose by the task's needs and observed tool reliability, not just the model's name.

Changing the main model starts a fresh provider conversation. Notes, tasks, instructions, files and workspace structure remain, but provider-specific conversation state is not carried across models. Information included in later requests can be sent to the newly selected provider; review the choice before using sensitive data.

[Model setup](model-setup.md) · [Local models](local-models.md)

## Understand tool availability and routing

**Availability**, **Route** and **folder access** answer different questions:

- **Available / Disabled:** may the assistant use the action at all?
- **Direct:** the action is presented directly to the model.
- **Gateway:** the assistant discovers the action through the searchable catalog when needed.
- **Folder access:** which files can a permitted local action reach?

Gateway does **not** mean disabled. Direct does **not** enable a disabled action or grant new file access.

Enabled Direct tools also remain discoverable and usable through the Gateway. Changing the route does not change the action's permissions. In delegated work, workers cannot expand inherited tool availability or file-tool access.

In new Rooms and Workspaces, core actions for Workspace records, local computer work, turn context, attachments and inline visuals default to Direct. Broader catalogs remain discoverable through the Gateway. Explicit saved choices and inherited overrides still apply.

Use **Tools & access** to change a source or fine-tune individual tools. Workspace choices take precedence over Room defaults; per-tool overrides can refine a source. An assistant request for more direct access is a proposal for you to review, not an automatic permission change.

## Grant a working folder, not an entire drive

File tools have full filesystem access by default within your operating-system permissions. To require approval of additional directory roots, enable **Require root access requests** in Room settings. Workspaces inherit that choice unless you set a Workspace-specific override.

For a file task, supply the exact project and output paths. If root requests are required, approve only the directories needed. Use a temporary copy while learning the preview, keep backups and start with read-only work when possible. These controls govern file tools, not arbitrary shell commands or third-party integrations.

Example:

```text
Review the files in the approved project folder. Summarize its structure and record
three findings in a workspace note. Do not modify files or run commands yet.
```

Separate workspaces are organizational boundaries, **not operating-system sandboxes**. Two assistants allowed to edit the same folder can still conflict. Give workers non-overlapping files or folders and one integration owner. Coordinate file edits, and review model-generated commands before consequential use.

## Add MCP tools only when needed

Compatible **Model Context Protocol (MCP)** servers can extend the catalog. Hosted HTTP/SSE servers and local desktop stdio servers are supported where the platform and server allow them.

Use the server publisher's documented endpoint or command, authentication and required settings. Confirm that discovery succeeds, then enable only the tools needed by the relevant Room or Workspace.

A local stdio server requires its executable/runtime on the desktop; it is not an Android installation recipe. Treat MCP servers and plugins as executable integrations with their own file access, network behavior and privacy policies. Do not assume that an integration becomes safe merely because its tools are shown in Atraium.

## Switch projects without losing your place

Atraium remembers the selected workspace in each Room. An active text response can continue when you navigate to another workspace; use the top-bar assistant activity menu to return to it or stop it.

Closing the application is different from navigation and can interrupt active work. Before retrying, check what already completed. Stopping a response does not undo saved files or external actions, and requests already sent may still be billed.

In a delegated assignment, **Stop response** pauses for your input; **Resume (user action)** explicitly continues it. **Stop branch** cancels an assignment and its descendants. Wait for cleanup before reusing or deleting the workspace. Interrupted delegated work is not replayed automatically. [Pause, stop and recovery](supervisor-workspaces.md#pause-stop-or-recover-work).

[Use cases](use-cases.md) · [Security](../SECURITY.md) · [Troubleshooting](troubleshooting.md) · [Documentation](README.md)
