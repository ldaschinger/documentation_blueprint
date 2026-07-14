# Decisions

Project-wide decision log — one file per decision, using the minimal
[MADR](https://github.com/adr/madr) format. Distinct from:

- the SAD's "Architecture Decisions" section (architecture-level, part of that document)
- each unit's "Design Decisions" section (scoped to that one unit)

This log is for decisions that don't fit either — cross-cutting choices
(toolchain, protocol, project-wide conventions) worth recording independent of
any single document.

## Convention

- One decision = one new numbered file: `0001-short-title.md`, `0002-...`
- Never edit an accepted decision's outcome — if it changes, add a new file
  and mark the old one superseded (`status: superseded by 0004`)
- Copy `template.md` for each new decision

See `0001-use-mermaid-for-diagrams.md` for a filled-in example.
