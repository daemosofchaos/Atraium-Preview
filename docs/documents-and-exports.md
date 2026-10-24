# Documents, visuals and exports

Ask Atraium to turn source material into a report, create an inline visual or save existing work to a folder. The examples below describe the result you want; you do not need to learn an assistant tool schema.

## Create a PDF from HTML

On **Windows**, the preferred PDF creator accepts ordinary HTML/CSS or an approved local HTML file. It requires an installed Edge or Chrome browser; Atraium does not download a browser automatically.

```text
Create a styled PDF from the saved project brief. Use a clear title, a concise
summary, a deliverables table and next steps. Keep the source HTML in the approved
output folder, use the default document print preset, and save the PDF alongside it.
```

For a ready-made source, save the [sample project brief](examples/project-brief.html) locally, grant access to its folder and ask to render that file. Rendering does not change the source HTML.

### Print defaults

The default **document** print preset provides:

- A4 fallback paper and **16 mm recurring page margins**;
- readable fallback typography and word-aware wrapping;
- headings kept with following content where possible;
- long-table pagination, repeated headers and normal rows kept intact;
- printable table wrappers, images and static graphics;
- removal of common outer screen gutters and fixed heights that cause double margins or empty page space.

The defaults handle print mechanics, not a mandatory visual theme. Colors, inner layouts and author styling remain customizable. Explicit CSS page rules can change paper and margins.

A row taller than a page cannot stay intact, and keeping a whole long section together can leave a gap. Keep source content in normal flow and avoid oversized figures. Always review a document before sharing it.

For a deliberately full-bleed or precisely positioned layout, ask for **print preset none** and provide complete print CSS. That opts out of the default print styling, not resource restrictions.

### Fonts, images and charts

Use permitted local assets beside the HTML or in child folders, or embedded data and static SVG. Remote fonts, stylesheets and images are blocked during rendering, and JavaScript does not run. Download assets you are allowed to use first, or use a chart image saved from an inline visual.

Missing or inaccessible assets can fail the render. Keep the original HTML and assets for revisions. Ordinary hyperlinks can remain in the PDF, but the renderer does not visit them.

### Platform and size limits

| Resource | Limit |
|---|---|
| HTML input | 4 MiB; file input must be valid UTF-8. |
| Local assets | 128 files, 12 MiB each, 32 MiB combined. |
| PDF output | 32 MiB and 200 pages. |
| Default rendering deadline | 60 seconds. |

Android uses the existing structured PDF generator rather than desktop HTML rendering. On Windows, legacy structured PDF authoring is disabled by default. If you need it, enable the specific action in **Tools & access → PDF → Fine-tune individual tools → Per-tool overrides → Availability**. Changing its route alone does not enable it.

## Word documents, spreadsheets and presentations

Specify the audience, format, sections and destination. The assistant can discover the relevant document tools through the Gateway.

```text
Create a short Word project brief from the approved workspace note. Include scope,
deliverables, assumptions and questions still awaiting a decision. Do not turn
unconfirmed details into commitments. Save the original document in the approved folder.
```

```text
Create a workbook from the attached monthly-sales.csv with monthly revenue, cost
and calculated profit, plus a totals row. Label it as illustrative data and do not
add forecasts or a currency. Save the original workbook in the approved folder.
```

Document features and local access vary by platform. Inspect generated files and important calculations in an appropriate viewer before sharing them.

## Use inline visuals

Ask for a suitable chart, comparison, timeline, heatmap, histogram, scatter plot, metric cards, process diagram or waterfall when it helps explain the data.

```text
Create a line chart showing monthly revenue and cost from the attached CSV. Use the
supplied order, label the values as illustrative, and do not imply a future trend.
```

Use the visual's controls:

- **Show data:** inspect supplied values.
- **Copy CSV:** reuse data elsewhere.
- **Ask about this:** add a follow-up to your draft without automatically sending it.
- **Copy image / Save PNG:** export a clean visual, with a white background by default or optional **App theme** styling.

Visuals are saved snapshots, not live dashboards. Inline widgets are not ordinary file artifacts; use **Save PNG** for their image rather than asking to save an artifact that does not exist.

## Save messages and original files

### Export exact conversation text

```text
Export the final recommendation and checklist into one file named handover.md in
the approved handover folder. Preserve the full stored message text and order.
Do not overwrite an existing file.
```

Exports contain the complete saved message bodies, not shortened search excerpts. The default is one UTF-8 `.md` file per message; you can request separate names or a combined file in your chosen order.

They do **not** include reasoning, tool logs, attachment bytes or rendered widget images. Exporting a response while it is still being written produces a snapshot of the available body, not a file that updates later.

**An extension changes the filename, not the content.** A `.pdf` extension does not render a PDF, `.html` does not convert Markdown to HTML, and `.cs` does not extract code from fenced blocks. Ask explicitly for conversion or extraction when needed.

### Save original documents, images and attachments

```text
Save the report PDF, workbook and selected image to the approved deliverables folder.
Keep their original bytes and formats. Do not regenerate them or replace existing files.
```

The assistant can discover and save existing generated documents/images and uploaded attachments. Saving is a copy, not another model generation or a file-format conversion. Renaming a file does not convert it.

### Scope and limits

Actions default to the active workspace. You can explicitly request another non-archived workspace in the same Room; they do not silently search other Rooms. The destination must be an approved folder or supported alias. Selecting Direct routing does not grant file permission.

| Resource | Limit |
|---|---|
| Messages or files in one call | 50 unique items. |
| One message body | 4 MiB UTF-8. |
| One artifact | 64 MiB. |
| Total artifact batch | 128 MiB. |

Oversized content fails rather than being silently truncated. Existing files are not overwritten by default. Choose a new filename or explicitly request replacement.

A multi-file save can leave earlier files saved if a later file fails. Read the result before retrying the whole batch. Original messages and attachments remain unchanged.

[Use cases](use-cases.md) · [Workspaces and tools](workspaces-and-tools.md) · [Troubleshooting](troubleshooting.md) · [Documentation](README.md)
