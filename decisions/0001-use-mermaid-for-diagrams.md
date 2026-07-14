---
status: "accepted"
date: 2026-07-14
---

# Use Mermaid for all diagrams instead of PlantUML or static images

## Context and Problem Statement

Diagrams need to stay diffable and mergeable in git, and viewable directly in
VS Code without a separate rendering step, while still being buildable into
PDFs for the SAD/SDD.

## Considered Options

- PlantUML (used by the BORA project's SAD)
- Mermaid
- Hand-drawn images (SVG/PNG) as the source of truth

## Decision Outcome

Chosen option: "Mermaid", because it renders directly in VS Code with a
common extension, has native diagram types that fit this project (C4,
sequence, packet/bit-field), and Pandoc can still render it into the PDF
build via `mermaid-filter`.

### Consequences

- Good, because diagrams are plain text and merge cleanly in git
- Good, because no separate rendering step is needed to view them during review
- Bad, because Mermaid's diagram type coverage is narrower than PlantUML's
  (e.g. no native deployment-diagram styling beyond the C4 set)
