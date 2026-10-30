# Coordinate a team with Supervisor workspaces

**Introduced in 0.5.0 Preview 1; includes the 0.6.0 Preview 1 improvements.**

Give one assistant a project to coordinate, then let it divide the work into focused assignments, review the results and bring everything together.

A **Supervisor** is a workspace with work delegation enabled. It can create specialist workspaces or assign work to available workspaces in the same Room. Each specialist has its own conversation, notes, tasks and deliverables, so you can follow the work without crowding the main project conversation.

Use suitable hosted or local models and give each workspace the tools and access its task needs. You do not need a separate provider account for every specialist.

## When a team is useful

Delegation works best when a project has distinct pieces that can be checked independently.

| Project | Possible assignments | Combined result |
|---|---|---|
| Software review | Tests, documentation and a focused code review. | A prioritised report with evidence and follow-up tasks. |
| Project costing | Scope review, calculation checks and a client report. | A reconciled workbook and report with assumptions and exclusions. |
| Product launch | Market research, positioning and presentation preparation. | A sourced launch package with a consistent recommendation. |

For a small, closely connected task, one assistant may be simpler. Start with a small team: more specialists can mean more coordination and provider charges, not necessarily faster or better results.

## Start your first delegated project

1. Create or select the project workspace in a Room. Choose a suitable model and review **Tools & access**.
2. Open **Workspace settings** and turn on **Enable Supervisor delegation**. Any workspace template can be used; you do not need to start again with a different template.
3. Review the limits below. For a first trial, leave **Allow nested Supervisors** off unless your specialists need teams of their own.
4. Select **Save workspace**, then send a brief with the objective, sources, assignments and boundaries.
5. Expand **Supervisor assignments** to follow progress. Choose **Open workspace** to inspect a specialist's conversation and saved work.

For a low-risk repository review, supply the exact project path and try:

```text
Review the repository at the project path I supplied. Create separate workers for
read-only reviews of tests and documentation. Give each a focused brief and ask
for findings tied to actual files, with missing evidence clearly identified.

Collect the results, check their claims against the repository, and deliver one
prioritised report. Save the agreed findings as a note in this workspace and
create actionable follow-up tasks. Do not edit files, run commands, publish,
contact external services or delegate further.
```

Review tool access as well as the brief. Asking for read-only work is not a substitute for disabling actions the project must not use.

## Write a brief the team can finish

Include:

- **Outcome:** the report, files, decision or other deliverables you want.
- **Sources:** the project paths, supplied documents or permitted research sources.
- **Responsibilities:** separate areas of work and who should combine the results.
- **Acceptance criteria:** checks to complete and evidence to include.
- **Boundaries:** whether files may change, commands may run, external research is allowed or further delegation is appropriate.

Ask the Supervisor to include the relevant material in each assignment; do not assume every specialist can see every conversation or attachment.

When several specialists will edit files, give them separate files or folders and put one person or assistant in charge of integration. Different workspaces do not prevent overlapping edits to the same files.

## Build teams within teams

With **Allow nested Supervisors** enabled, a specialist can coordinate its own team. A research lead might organise separate competitor and customer reviews while another specialist prepares a presentation.

All teams remain in the same Room and share the original project's limits. Creating a nested team does not give it more access or a fresh allowance.

Use nesting when a workstream genuinely needs coordination. Leave it off for a straightforward two-person review.

## Share Skills with specialists

**New in 0.6.0 Preview 1.** Give specialists the working methods they need with [Skills](skills.md)—for example, a source-checking method for a researcher or a release checklist for a reviewer.

Add the Skills to the coordinating Room or workspace, then explain who should use each one:

```text
Give the documentation reviewer the release-review Skill and the research reviewer
the source-checking Skill, if they are available to this workspace. Share only the
guidance each needs. Keep the reviews read-only and do not enable additional tools.
```

Use a Room or personal library for guidance intended to be shared. Workspace-only Skills stay in that workspace. If a Skill is **Only when requested**, request it in your message before asking the Supervisor to share it.

Work already under way keeps its chosen Skill version when you edit the library. Open **Skills loaded** on a specialist's response if you want to inspect the guidance used, and review important results as you would for any other task. Sharing Skills does not change tool or file access.

## Understand the shared limits

Set the size and duration of the team in **Workspace settings**:

| Setting | Default | What it controls |
|---|---|---|
| Nested worker depth | 3 | How many levels of specialist teams can be created below the coordinating workspace; choose 1–8. |
| Lifetime worker / creation allowance | 16 | Up to 16 worker assignments and 16 workspace creations during the project; choose 1–64. One setting applies to both allowances. |
| Concurrent model steps | 4 | How many specialists can use a model at the same time; choose 1–8. The coordinating Supervisor is separate from this allowance. |
| Shared Chat / Utility request budget | 80 | The allowance for specialists' new model requests and retries; choose 1–500. See the billing guide for what counts. |
| Absolute lifetime (minutes) | 60 | The time available for delegated work from the assignment's start; choose 1–240. |
| Allow nested Supervisors | On | Whether specialists may coordinate teams of their own. |

These limits apply to the specialists, including nested teams. In **0.6.0 Preview 1**, the coordinating Supervisor can still review their results and finish a handover after their request allowance or time runs out. It cannot start more delegated work beyond the project's limits.

Finishing or removing a worker does not replenish the project allowance. Waiting, checking progress or pausing does not extend the deadline.

**A request budget is not a spending limit.** Other model activity, tool follow-ups, media generation and paid integrations may still incur charges. Use provider-side budgets and quotas, and monitor usage during a small trial before starting a long project. See [Token usage and billing](https://github.com/daemosofchaos/Atraium-Preview/blob/main/TOKEN-USAGE-AND-BILLING.md).

## Review progress and results

**Supervisor assignments** stays collapsed until you want it, with a compact count of active work. Expand it to see assignments, status, deadlines, request counts and returned results. Open an individual workspace for its full conversation and deliverables.

- **Active** shows projects that still have work under way, waiting, paused or closing.
- **History** shows the latest 10 fully finished projects, including completed, failed, cancelled, expired and interrupted work.
- **Clear finished** puts the finished projects currently shown out of view. It does not stop work, delete assignments or erase conversations, workspaces and results. Newly finished projects still appear.
- **Show cleared history** brings dismissed recent projects back; **Hide cleared history** puts them out of view again.

Cleared history is remembered on this device for your Room and workspace. Your saved work remains available even when it is no longer in the recent list.

The panel appears only while **Enable Supervisor delegation** is on. Turning it off and saving hides the panel immediately without deleting assignment history. Turn it on again to access that history.

Ask the Supervisor to reconcile conflicting findings and produce a clear final handover. Check important claims against actual files, sources, calculations or test results. If a summary is shortened or reports an error, inspect the underlying work before treating it as complete.

You can visit other workspaces while text assignments continue. Atraium must remain running; this preview is not an always-on cloud service.

## Pause, stop or recover work

| Action or status | Meaning |
|---|---|
| Composer Stop | Use **Stop** in the message box to end this workspace's assignment and its team, including queued, waiting or paused work. In an ordinary workspace, it stops the current response. |
| Resume (user action) | Continue a paused assignment when you are ready. |
| Stop branch | Cancel the selected assignment and the team working under it. |
| Stop all owned trees shown here | Cancel the coordinated projects you can control from this panel. |
| Cancelling / cleanup pending | Work is still closing. Wait before reusing the workspace. |
| Interrupted | Work stopped unexpectedly and will not restart automatically. |

Stopping does not undo files already changed, messages already sent or other completed actions. Requests already submitted may still be charged. Pausing does not extend the project deadline.

After **Stop**, the message box keeps your draft and tells you if it is waiting for work to close. You can send again once the workspace is ready. Stopping a specialist's workspace affects that part of the team, not unrelated assignments.

Wait for closing work before changing settings, assigning new work to that workspace or deleting it. If closing reports a failure, use **Stop** or **Stop branch** to try again. If deletion was blocked, retry it after the work has closed.

After an application interruption, review saved conversations, deliverables and any external effects before starting a new attempt. Finished results are retained, but unfinished work is not restarted automatically. Avoid repeating a task that may already have changed files or completed part of its work.

If an assignment is still running in another Atraium instance, control it there. A rejected prompt keeps your draft and attachments so you can try again when the workspace is available.

## Keep access and data appropriate

Choose trusted tools and give each workspace only the access its task needs. A separate workspace is a way to organise work, not a security sandbox for commands, plugins or connected services.

Review every model and service involved before supplying sensitive information. Project briefs, worker results and tool output can be sent to the configured providers. A local Chat model does not make a project offline if another capability uses a remote service.

[Documentation](README.md) · [Practical examples](use-cases.md) · [Troubleshooting](troubleshooting.md)
