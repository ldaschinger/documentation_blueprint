# Tools

Detail that doesn't belong in the root `README.md` — modeled on the real
`tools.md` in `../../example docu/viega/documentation examples/doc project/
architecture/tools.md`.

## Getting Started

- Clone (`--recursive` if the project uses submodules)
- IDE: <name + version>, project files at <location>
- Compiler: <name + version>
- Flashing: <steps to get firmware onto the target>

## Dependencies

| Tool | Purpose |
| ---- | ------- |
| <Git> | Version control, submodules |
| <CMake> | Unit test build |
| <static analyzer, e.g. clang-tidy/cppcheck> | Static analysis |
| <formatter, e.g. clang-format> | Consistent code formatting |
| <debugger/probe software> | Flashing and debugging |

## Building and Running Unit Tests

```bash
<mkdir/cmake/build/run commands>
```

## Static Analysis and Formatting

- `<clang-format config + pre-commit hook, if used>`
- `<clang-tidy / cppcheck invocation>`

## Debugging

- Probe connection: <pins/pinout reference>
- Common errors and recovery steps: <list as they're discovered>

## CI

- <CI system used, e.g. GitHub Actions / Bitbucket Pipelines>
- What runs on each push: <build, tests, static analysis, doc build/link-check>
