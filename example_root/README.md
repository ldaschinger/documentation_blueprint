# <Project Name>

<One paragraph: what this firmware does and what hardware it runs on.>
README.md is confirmed standard practice for embedded repos — the root-level
front door with a short description plus build/flash/run instructions. Keep
it short; anything longer belongs in `tools.md` or `example_docs/`.

## Building

```bash
<clone command, --recursive if submodules are used>
<build command, e.g. cmake --build build/ or make>
```

Toolchain/compiler version: <e.g. XC8 2.41, arm-none-eabi-gcc 13.2>

## Flashing

```bash
<flash command / tool, e.g. openocd, mdb.sh, st-flash>
```

Target hardware: <board/revision>. Debug probe: <e.g. ICD5, ST-Link>.

## Running

<How to observe it's working: LED pattern, UART log output, expected behavior.>

## Repository Layout

    application/, device/, middleware/, hal_bsp/   Units — see their doc/ folders
    example_docs/                                   Architecture (SAD) and design (SDD) documents
    decisions/                                       Project-wide decision log (ADRs)
    test/                                            Unit test build

## More Documentation

- Architecture: `../example_docs/SAD_arc42/` or `../example_docs/SAD_4plus1/`
- Design: `../example_docs/SDD_ieee1016/` or `../example_docs/SDD_index/`
- Decisions: `../decisions/`
- Detailed developer setup, dependencies, debugging: `tools.md`
