---
title: "Software Design Description — <Project Name>"
---

# Software Design Description — <Project Name>

```{.include}
01_getting_started.md
02_units.md
```

<!-- One line per unit row in 02_units.md, in the same order. Nested
     {.include} blocks aren't processed recursively, so unit docs must be
     listed here rather than inside 02_units.md itself. shift-heading-level-by
     nests each unit doc's own top-level heading under "## Units" (H2). -->
```{.include shift-heading-level-by=2}
../../example_sources/example_layer/example_module/doc/example_module.md
```

```{.include}
03_cross_unit_decisions.md
04_glossary.md
```
