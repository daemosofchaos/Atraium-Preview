# Skills: make good workflows repeatable

**For 0.6.0 Preview 1.**

Keep the way you want work done ready for your next conversation. A **Skill** is reusable guidance your assistant can draw on—a writing style, research method, coding standard or checklist—so you do not have to explain the same approach every time.

## What could you use a Skill for?

| Your work | A useful Skill |
|---|---|
| Writing for a business | Your tone, preferred structure and editing checklist. |
| Researching a decision | How to compare sources, identify gaps and present findings. |
| Developing software | Coding conventions, review steps and handover expectations. |
| Preparing a release | A repeatable checklist for changes, evidence and outstanding risks. |

Use Skills for the **method**, notes for **project facts**, and tasks for **what needs doing next**.

## Add your first Skill

1. Open **Settings → Skills** and choose **Create Skill**.
2. Enter a name, a description of when it is useful, and the instructions you want the assistant to follow.
3. Save it, then return to your workspace.
4. Select **Skills** beside **Chat**, expand **Add Skills**, and choose **Add** beside your Skill.

Already have a Skill? Choose **Import Skill**, select its ZIP file, review any notices and choose **Add Skill**. Only import from sources you trust.

### Write useful instructions

Keep a Skill focused on one kind of work. Explain when it applies, the steps to follow and what a good result should include. Add checklists or templates under **Reference files** when helpful.

For a release-review Skill, you might write:

```text
Review the proposed release for its intended audience.
Check the scope, compatibility changes and available verification evidence.
Highlight missing information and unresolved risks.
Finish with a concise recommendation and the decisions still needed.
```

Choose **Save draft** if it is not ready yet. Drafts suggested by the assistant also stay in your library for review; open one and choose **Make available** when you are happy with it.

## Choose when it is used

Each added Skill has a **Use this Skill** choice. Changes save immediately.

| Choice | When to choose it |
|---|---|
| When relevant | Let the assistant choose this guidance for suitable tasks. |
| Only when requested | Use it only when you ask for it. |
| Off | Leave it out of this Room or workspace. |
| Use Room setting | Follow the shared choice for the Room. |

For everyday guidance, **When relevant** saves you remembering to ask each time. Choose **Only when requested** for a specialised method you want to call on deliberately.

### Request a Skill for your next message

Select **Skills** in the message box and choose the Skill you want. It appears as a removable **Requested Skill** chip, with its version. Type your question and send when ready.

You can also choose **Use in chat** from the Skills panel, or ask by name:

```text
Use skill release-review to review this proposal.
```

Choosing a Skill does not send your message or change your workspace settings. Remove the chip if you change your mind. **Manage Skills** opens the full panel.

If two methods suggest different approaches, tell the assistant which one you want to use. Adding guidance helps shape the work, but important results still need your review.

## Save a response as a workflow

When a response contains an approach worth keeping:

1. Open **Message actions → Save this workflow as a Skill** on the completed response.
2. Give the draft a useful name and description.
3. Turn the response into reusable steps. Remove details that belong only to that project.
4. Choose **Save workflow draft**.
5. Review it in the workspace library and choose **Make available** when ready.

The draft is yours to refine; it is not put into use just because you opened or saved it. Check the preview for private or confidential information before saving or sharing. Automatic cleanup may help, but it does not replace your review.

## Organise your library

- **Your library:** Skills you can add to any Room.
- **Room library:** guidance shared within a Room and its workspaces.
- **Workspace library:** guidance for one project, including drafts suggested there.

Add a Skill to the Room when several projects should use the same approach. A workspace can make its own choice without changing its neighbours. **Reset to Room setting** returns it to the shared choice.

## Update and share a Skill

Edit a Skill as your approach improves. Existing projects keep their chosen version until you select **Update to latest version**; work already under way is not changed by an edit.

Use **Version history** to inspect or compare earlier versions. **Stop using version** makes a particular version unavailable. **Archive Skill** puts a Skill aside; **Restore Skill** brings it back, but does not reactivate stopped versions.

Choose **Export** to share a ZIP that someone else can import. Atraium supports written instructions and text references in the [Agent Skills format](https://agentskills.io/specification). If an import contains unsupported content, the import screen explains what can be included. Bundled scripts are not run.

Remove credentials and confidential facts before sharing. Keep reference files focused and useful rather than exporting a whole project's history.

## See the guidance supplied

Open **Skills loaded** on a response to see the Skills and versions supplied to the assistant. Choose **View instructions** to inspect them, or **Manage Skills** to change future use.

This helps you review how the task was approached; it is not proof that every step was followed. **Compatibility & checks** in Skill details provides requirements and package notices to review before use.

## Use Skills with a Supervisor team

Tell the Supervisor which Skills each specialist needs—for example, a research method for the researcher and an editing checklist for the writer.

Use a Room or personal library for guidance intended to be shared. Workspace-only Skills stay with that workspace. If a Skill is **Only when requested**, request it in your message before asking the Supervisor to share it.

[Share Skills with specialists](supervisor-workspaces.md#share-skills-with-specialists).

## Keep your question and references separate

Right-click selected conversation text and choose **Ask about this** to put it in a **Selected text** card. Inspect or remove the card, then type your question below. A Skill mentioned inside a quotation is not the same as asking to use it yourself.

Your draft, requested Skills and selections stay with their workspace while you navigate during the same session. **Reuse last prompt** brings them back together without mixing the selections into your typed question.

## If something is missing

- **Cannot find a Skill:** check its library, whether it is archived, and whether a draft needs **Make available**.
- **A Skill is not being used:** check its usage choice. For **Only when requested**, choose it in the message box or ask for it by name.
- **An older version appears:** choose **Update to latest version**, then start a new request.
- **A requested Skill is no longer available:** remove its chip and choose again. Your draft is kept.
- **Instructions are too long:** split them into a focused method and useful reference files.

Skills do not change tool or file access. Using them can contribute to normal model-provider charges, and hosted providers may receive guidance needed for the task. Review [billing](../TOKEN-USAGE-AND-BILLING.md) and [privacy](../PRIVACY.md) if your work is sensitive or uses paid services.

[Documentation](README.md) · [Workspaces and access](workspaces-and-tools.md) · [Supervisor workspaces](supervisor-workspaces.md)
