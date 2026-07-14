## Development View

Module organization from a build/programmer perspective (see `example_sources/`
for the actual per-unit `doc/inc/src` layout).

    application/.....................units implementing application logic
      <unit>/inc, src, doc
    device/...........................units implementing device abstraction
    middleware/.......................reusable protocol/service units
    hal_bsp/..........................MCU/board-specific units

- A unit's public interface lives in `inc/`; private implementation in `src/`
- A unit may include another unit's `inc/` headers, never another unit's
  internals in `src/`
- Design documentation lives next to the unit's source (`doc/`), not in a
  separate central document — see the earlier discussion on colocating docs
