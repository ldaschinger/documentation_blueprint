# Software Design Description — <Project Name>

Thin index/hub, styled after the real `main.md` in
`../../../example docu/viega/documentation examples/doc project/architecture/`.
No formal standard structure — just navigation. Kept separate from the SAD
(`../SAD_arc42/` / `../SAD_4plus1/`), which covers architecture; this page is
purely an entry point into the unit-level design docs and cross-cutting notes.

Each chapter lives in its own file in this folder and is pulled into this
document at build time via the `include-files.lua` Pandoc filter (see
`../include-files.lua`). Viewed directly in a plain Markdown previewer, the
block below just shows the file list — run it through Pandoc to see the
merged document:

```bash
pandoc README.md --lua-filter=../include-files.lua -o SDD_index.pdf
```

```{.include}
01_getting_started.md
02_units.md
03_cross_unit_decisions.md
04_glossary.md
```
