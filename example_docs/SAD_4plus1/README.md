# Software Architecture Document — <System Name> (4+1 View Model)

Based on Kruchten's [4+1 view model](https://en.wikipedia.org/wiki/4%2B1_architectural_view_model):
Logical, Process, Development, and Physical views, tied together by Scenarios
(the "+1" view). Kept deliberately short — one diagram and a few bullets per
view — unlike the full arc42 document (`../SAD_arc42/`). Style and layering
(Driver/Device/Application) borrowed from the real architecture docs in
`../../../example docu/viega/documentation examples/doc project/architecture/`.
Diagrams are Mermaid, same convention as the rest of this blueprint — requires
a Mermaid-aware Markdown preview in VS Code to render.

Example system used throughout: an I2C sensor reader, consistent with the
`example_sources/` unit-level docs.

Each view lives in its own file in this folder and is pulled into this
document at build time via the `include-files.lua` Pandoc filter (see
`../include-files.lua`). Viewed directly in a plain Markdown previewer, the
block below just shows the file list — run it through Pandoc to see the
merged document:

```bash
pandoc README.md --lua-filter=../include-files.lua --filter=mermaid-filter -o SAD_4plus1.pdf
```

```{.include}
01_scenarios.md
02_logical_view.md
03_process_view.md
04_development_view.md
05_physical_view.md
```
