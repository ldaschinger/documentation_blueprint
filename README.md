# Documentation Blueprint

A reusable template for how to document an embedded C project: unit-level
design docs colocated with source, plus system-level architecture/design
documents that can be built into PDFs. Everything here is an example/skeleton
to copy and adapt per project — placeholders are marked `<like this>`.

## Structure

    example_sources/          Unit-level docs, colocated with source code
      <layer>/<unit>/
        doc/                 Design doc + diagrams for this unit
        inc/                 Public header
        src/                 Implementation

    example_docs/             System-level architecture/design documents
      SAD_arc42/               Software Architecture Document — arc42 template + C4 (Mermaid) diagrams
      SAD_4plus1/               Software Architecture Document — Kruchten's 4+1 view model (shorter)
      SDD_ieee42010/            Software Design Description — IEEE 1016 + ISO 42010, viewpoint-based
      SDD_index/                Software Design Description — thin index/hub, just links to unit docs
      include-files.lua        Shared Pandoc filter used by all four documents above

## Two conventions demonstrated

**Unit docs live with the code, not in one central file.** See
`example_sources/example_layer/example_module/doc/example_module.md` for the
pattern: Public Interface, Internal Data, Design Decisions, diagrams as
Mermaid code blocks (git-diffable, renders in VS Code with a Mermaid preview
extension).

**System-level docs are split into chapters and built with Pandoc.** Each
folder under `example_docs/` has a `README.md` (front matter + a
`{.include}` block listing that document's chapter files in order) plus one
file per chapter/view. Viewed directly, the include block just shows a file
list; running it through Pandoc merges everything into one document:

```bash
cd example_docs/SAD_arc42
pandoc README.md --lua-filter=../include-files.lua --filter=mermaid-filter -o SAD_arc42.pdf
```

(`mermaid-filter` renders the Mermaid diagrams; drop it for documents that
don't have any, like `SDD_index`.)

## Which SAD/SDD to use

Two options each are included to compare, not to use both on a real project:

- **SAD:** `SAD_arc42` (comprehensive) vs. `SAD_4plus1` (shorter, fewer views)
- **SDD:** `SDD_ieee42010` (standards-traceable, viewpoint-based) vs.
  `SDD_index` (minimal navigation hub, viega-style)

Pick one of each, delete the other, and replace the example content with your
real system.
