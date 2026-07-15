# SAD — arc42 (blueprint example)

arc42 template (v9) + [C4 model](https://c4model.com) diagrams, written as
Mermaid (`C4Context`, `C4Container`, `C4Component`, `C4Deployment`,
`sequenceDiagram`) so they stay git-diffable/mergeable and render directly in
VS Code with a Mermaid-aware preview extension. Content uses the classic C4
"Internet Banking System" example purely to illustrate the pattern — replace
with your own system.

Each arc42 section lives in its own numbered file in this folder. `main.md`
is the actual document — it pulls the numbered files in via the
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
- **mermaid-filter** (requires Node.js):
  - `npm install -g mermaid-filter`

```bash
pandoc main.md --lua-filter=../shared/include-files.lua --filter=mermaid-filter --pdf-engine=weasyprint --css=../shared/style.css -o SAD_arc42.pdf
```
