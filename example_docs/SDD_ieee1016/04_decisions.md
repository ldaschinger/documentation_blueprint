## 4. Decisions

Cross-unit decisions only — a decision that affects a single unit belongs in
that unit's own "Design Decisions" section instead.

- ID: 001-doc-colocation
- Title: Colocate unit design docs with source instead of a monolithic SDD
- Context: A single central SDD tends to drift out of sync with the code it describes.
- Options: (a) monolithic SDD, (b) docs colocated per unit + thin global index, (c) docs colocated per unit + full IEEE 1016 global SDD
- Outcome: (c) — chosen because <traceability/audit requirement, if applicable>
- More Information: see also `../SDD_index/main.md` for the simpler alternative considered
