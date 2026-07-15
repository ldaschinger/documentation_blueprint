# SDD — thin index/hub (blueprint example)

Styled after the real `main.md` in `../../../example docu/viega/documentation
examples/doc project/architecture/`. No formal standard structure — just
navigation. Kept separate from the SAD (`../SAD_arc42/` / `../SAD_4plus1/`),
which covers architecture; this document is an entry point into the
unit-level design docs and cross-cutting notes — and, at PDF build time, pulls
the full content of each linked unit doc in too (see `main.md`), so the built
PDF is self-contained.

Each chapter lives in its own file in this folder. `main.md` is the actual
document — it pulls the numbered files, and the linked unit docs, in via the
`include-files.lua` Pandoc filter at build time. This `README.md` is not part
of the document; it's only the build instructions.

**Prerequisites** (one-time setup):

- **Pandoc**:
  - `brew install pandoc` (macOS)
  - `apt install pandoc` (Debian/Ubuntu)
  - `winget install --id JohnMacFarlane.Pandoc` (Windows)
- **weasyprint**:
  - `brew install pango pipx && pipx install weasyprint` (macOS — Homebrew's Python blocks plain `pip install`; use `pipx`)
  - `apt install weasyprint` (Debian/Ubuntu)
  - `pip install weasyprint` (Windows / other)
- **mermaid-filter** (requires Node.js) — the included unit docs have Mermaid diagrams:
  - `npm install -g mermaid-filter`

```bash
pandoc main.md --lua-filter=../shared/include-files.lua --filter=mermaid-filter --pdf-engine=weasyprint --css=../shared/style.css -o SDD_index.pdf
```
