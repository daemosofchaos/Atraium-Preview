# Coordinate a team with Supervisor workspaces

**Available in 0.5.0 Preview 1.** Give one assistant a project to coordinate, then let it divide the work into focused assignments, review the results and deliver a consolidated outcome.

A **Supervisor** is a workspace with work delegation enabled. It can create specialist workspaces or assign work to available workspaces in the same Room. Each worker keeps its own conversation, notes, tasks and deliverables. When nested supervision is allowed, a worker can coordinate its own specialists within the project's shared limits.

You do not need a separate provider account for every worker. Use suitable hosted or local model profiles, with the tools and access needed for the task. A working **Chat** profile is required; **Utility** is optional and uses Chat for supporting work when no ready Utility profile is assigned.

## When a team is useful

Delegation is most useful when a project has distinct pieces that can be checked independently.

| Project | Possible assignments | Consolidated result |
|---|---|---|
| Software review | Tests, documentation and a focused code review. | A prioritised report with file references, evidence and follow-up tasks. |
| Project costing | Scope review, calculation checks and a client report. | A reconciled workbook and report with assumptions and exclusions. |
| Product launch | Market research, positioning and presentation preparation. | A sourced launch package with a consistent recommendation. |

For a small, tightly coupled task, one assistant may be simpler. More workers can mean more model requests and coordination, not automatically faster or better results.

## Start your first delegated project

1. Create or select the project workspace in a Room. Choose a suitable model and review its **Tools & access** settings.
2. Open **Workspace settings** and turn on **Enable Supervisor delegation**. This setting is independent of the workspace template: a Research board or Coding room can also be a Supervisor.
3. Review the limits below. For a first trial, keep the scope small and turn off **Allow nested Supervisors** if the workers do not need teams of their own.
4. Select **Save workspace**, then send an objective that states the sources, assignments, completion criteria and boundaries.
5. Open **Supervisor assignments** above the workspace to review progress. Use **Open workspace** to inspect a worker's conversation and saved work.

For a low-risk repository review, provide the exact repository path and try:

```text
Review the repository at the project path I supplied. Create separate workers for
read-only reviews of tests and documentation. Give each a focused brief and ask
for findings tied to actual files, with missing evidence clearly identified.

Collect the results, check their claims against the repository, and deliver one
prioritised report. Save the agreed findings as a note in this workspace and
create actionable follow-up tasks. Do not edit files, run commands, publish,
contact external services or delegate further.
```

Review the tool policy as well as the prompt. A request to work read-only is not a substitute for disabling actions the project must not use.

## Write a brief the team can finish

Give the Supervisor enough information to make each assignment self-contained:

- **Outcome:** the files, report, decision or other deliverables that should exist.
- **Sources:** the exact project paths, supplied documents or permitted research sources.
- **Responsibilities:** separate areas of work and who should produce the final combined result.
- **Acceptance criteria:** calculations to reconcile, tests to run or claims to support with evidence.
- **Boundaries:** whether files may change, commands may run, external research is allowed or further delegation is appropriate.

Do not assume every worker can see every conversation or attachment. Ask the Supervisor to include the relevant material in each brief and identify where outputs are saved. Workers' results inform the project; they do not grant new permissions or replace your instructions.

For implementation, assign non-overlapping files or folders to workers and keep integration under one owner. A separate workspace does not prevent another assistant, editor or command from changing the same files.

## Build teams within teams

With **Allow nested Supervisors** enabled, a worker can become a Supervisor for its own part of the project. For example, a launch coordinator could assign a research lead to organise separate competitor and customer reviews, while another worker prepares the presentation.

Nested teams remain in the same Room and share the original project's allowances. A worker cannot expand its inherited tools, file-tool access or delegation limits. It cannot use nesting to create a fresh budget.

Use nesting when a workstream genuinely needs coordination. Leave it off for a straightforward two-worker review.

## Understand the shared limits

Workspace settings provide the following defaults and supported ranges:

| Setting | Default | What it controls |
|---|---|---|
| Nested worker depth | 3 | Levels below the coordinating workspace; choose 1–8. |
| Lifetime worker / creation allowance | 16 | Up to 16 worker assignments and 16 workspace creations over the project's lifetime; choose 1–64. One setting applies to both allowances. |
| Concurrent model steps | 4 | Model work that can execute at the same time; choose 1–8. |
| Shared Chat / Utility request budget | 80 | Actual Chat and Utility model requests across the team, including retries and follow-up requests; choose 1–500. |
| Absolute lifetime (minutes) | 60 | The project's time limit; choose 1–240. |
| Allow nested Supervisors | On | Whether workers may coordinate teams of their own. |

Allowances are shared across the assignment hierarchy. Completing or deleting a worker does not refund its assignment or creation allowance. Checking progress, waiting for workers and pausing do not extend the deadline. A Supervisor can wait while its workers use the available execution slots; you do not need a slot for every workspace at once.

**A request budget is not a spending limit.** It does not cap tokens, media generation, paid integrations or the amount charged by a provider. Set provider-side budgets and quotas, monitor activity and start with a small trial before delegating a long project.

## Review progress and results

**Supervisor assignments** shows the hierarchy, assignment status, deadlines, model-request counts and returned worker results. Open an individual workspace for its full conversation and records. If a result is marked as truncated or reports an error, review the underlying work before treating it as complete.

Ask the Supervisor to reconcile conflicting findings, verify important claims and produce one final handover. Check actual files, calculations or test results rather than relying only on a completion summary. Notes and tasks remain editable project records, not proof that the deliverables were validated.

Navigation does not stop an active text assignment. You can visit another workspace and return through the assistant activity menu. Atraium must remain running; this preview is not an always-on cloud service.

## Pause, stop or recover work

| Action or status | Meaning |
|---|---|
| Stop response | In a delegated assignment, pauses the current response for your input. |
| Resume (user action) | Explicitly continues a paused assignment from saved conversation state. An assistant cannot resume it on your behalf. |
| Stop branch | Cancels the selected assignment and its descendants. |
| Stop all owned trees shown here | Cancels the coordinated projects displayed in that assignments panel. |
| Cancelling / cleanup pending | Work or resources are still closing; the workspace remains reserved. |
| Interrupted | Work was interrupted and is not replayed automatically. |

Stopping does not undo files already changed, messages already sent or other completed external actions. Requests already submitted can still be charged. Paused resources remain subject to their own expiry, and the project deadline still applies.

Wait for cleanup before changing an active workspace's settings, reusing it for another assignment or deleting it. If cleanup reports a failure, **Stop branch** can retry that cleanup without repeating completed work. A deletion blocked by active work must be explicitly retried after cleanup; it does not happen later without your action.

After an application interruption, inspect saved conversations, files and any external effects before starting a new attempt. Do not blindly repeat an assignment that may already have completed part of its work.

## Keep access and data appropriate

Delegation does not turn workspace organization into a security sandbox. File tools remain subject to the configured access policy and operating-system permissions; shell commands, desktop control, MCP servers and plugins have their own capabilities. Do not give untrusted work broad executable access expecting a workspace boundary to contain it.

Review every model and service involved before supplying sensitive information. Project briefs, worker results and tool output included in requests can be sent to the configured providers. A local Chat profile does not make a project offline if another capability or integration uses a remote service.

[Documentation](README.md) · [Practical examples](use-cases.md) · [Troubleshooting](troubleshooting.md)
