# SAD — 4+1 View Model (blueprint example)

Kruchten's 4+1 view model: Logical, Process, Development, and Physical views,
tied together by Scenarios (the "+1" view). Kept deliberately short — one
diagram and a few bullets per view — unlike the full arc42 document
(`../SAD_arc42/`). Example system used throughout: an I2C sensor reader,
consistent with the `example_sources/` unit-level docs.

Each view lives in its own file in this folder. `main.md` is the actual
document — it pulls the numbered files in via the `include-files.lua` Pandoc
filter at build time. This `README.md` is not part of the document; it's only
the build instructions.

**Prerequisites** (one-time setup):

- **Pandoc**:
  - `brew install pandoc` (macOS)
  - `apt install pandoc` (Debian/Ubuntu)
  - `winget install --id JohnMacFarlane.Pandoc` (Windows)
- **weasyprint**:
  - `brew install pango pipx && pipx install weasyprint` (macOS — Homebrew's Python blocks plain `pip install`; use `pipx`)
  - `apt install weasyprint` (Debian/Ubuntu)
  - `pip install weasyprint` (Windows / other)
- **mermaid-filter** (requires Node.js):
  - `npm install -g mermaid-filter`

```bash
pandoc main.md --lua-filter=../shared/include-files.lua --filter=mermaid-filter --pdf-engine=weasyprint --css=../shared/style.css -o SAD_4plus1.pdf
```
