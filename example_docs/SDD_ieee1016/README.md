# SDD — IEEE 1016 + ISO 42010 (blueprint example)

Based on the [jam01/SDD-Template](https://github.com/jam01/SDD-Template)
(IEEE 1016-2009 + ISO/IEC/IEEE 42010). This is the **global** SDD — it does
not duplicate per-unit design content by hand; that content lives next to
each unit's source (see `../../example_sources/<layer>/<unit>/doc/`). Its
"Design Views" chapter (`03_design_views.md`) is a table of pointers into
those unit docs, and at PDF build time `main.md` also pulls the full content
of each linked unit doc in (see the second `{.include}` block there), so the
built PDF is self-contained. Kept separate from the SAD (`../SAD_arc42/` /
`../SAD_4plus1/`) — see `01_introduction.md`'s Subject Scope for how the two
divide responsibilities.

Each chapter lives in its own numbered file in this folder. `main.md` is the
actual document — it pulls the numbered files, and the linked unit docs, in
via the `include-files.lua` Pandoc filter at build time. This `README.md` is
not part of the document; it's only the build instructions.

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
pandoc main.md --lua-filter=../shared/include-files.lua --filter=mermaid-filter --pdf-engine=weasyprint --css=../shared/style.css -o SDD_ieee1016.pdf
```
