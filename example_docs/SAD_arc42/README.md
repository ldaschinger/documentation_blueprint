# Software Architecture Document — <System Name>

Based on the [arc42](https://arc42.org) template (v9) with [C4 model](https://c4model.com)
diagrams (see [arc42 + C4 example](https://bitsmuggler.github.io/arc42-c4-software-architecture-documentation-example/)).
Diagrams are Mermaid (`C4Context`, `C4Container`, `C4Component`, `C4Deployment`,
`sequenceDiagram`) — kept as text so they stay git-diffable/mergeable, same
convention as the unit-level docs in `example_sources/`. Requires a Mermaid-aware
Markdown preview in VS Code (e.g. "Markdown Preview Mermaid Support") to render.

Sections and diagrams below use the classic C4 "Internet Banking System" example
purely to illustrate the pattern — replace with your own system.

Each arc42 section lives in its own numbered file in this folder and is pulled
into this document at build time via the `include-files.lua` Pandoc filter (see
`../include-files.lua`). Viewed directly in a plain Markdown previewer, the
block below just shows the file list — run it through Pandoc to see the
merged document:

```bash
pandoc README.md --lua-filter=../include-files.lua --filter=mermaid-filter -o SAD_arc42.pdf
```

```{.include}
01_introduction_and_goals.md
02_architecture_constraints.md
03_context_and_scope.md
04_solution_strategy.md
05_building_block_view.md
06_runtime_view.md
07_deployment_view.md
08_cross_cutting_concepts.md
09_architecture_decisions.md
10_quality_requirements.md
11_risks_and_technical_debts.md
12_glossary.md
```
