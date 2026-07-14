# Software Design Description — <Project Name>

Version 0.1
Prepared by <author> · <organization> · <date>

Based on the [jam01/SDD-Template](https://github.com/jam01/SDD-Template)
(IEEE 1016-2009 + ISO/IEC/IEEE 42010). This is the **global** SDD — it does not
repeat per-unit design content, which lives next to each unit's source (see
`../../example_sources/<layer>/<unit>/doc/`). Section 3 below is a table of
pointers into those unit docs rather than a duplicate of them. This document
is separate from the SAD (`../SAD_arc42/` / `../SAD_4plus1/`) — the SAD covers
architecture (system context, structure, deployment); this SDD covers how that
architecture is realized at the unit level and tracks cross-unit decisions.

Each chapter lives in its own numbered file in this folder and is pulled into
this document at build time via the `include-files.lua` Pandoc filter (see
`../include-files.lua`). Viewed directly in a plain Markdown previewer, the
block below just shows the file list — run it through Pandoc to see the
merged document:

```bash
pandoc README.md --lua-filter=../include-files.lua -o SDD_ieee42010.pdf
```

## Table of Contents

- [1. Introduction](#1-introduction)
- [2. Design Overview](#2-design-overview)
- [3. Design Views](#3-design-views)
- [4. Decisions](#4-decisions)
- [5. Appendixes](#5-appendixes)

## Revision History

| Name | Date | Reason for Changes | Version |
| ---- | ---- | ------------------- | ------- |
|      |      |                     |         |

```{.include}
01_introduction.md
02_design_overview.md
03_design_views.md
04_decisions.md
05_appendixes.md
```
