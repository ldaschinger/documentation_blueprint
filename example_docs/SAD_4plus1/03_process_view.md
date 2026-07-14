## Process View

Runtime concurrency and communication between concurrently executing units.

```mermaid
flowchart LR
    subgraph MainLoop["Main loop / scheduler"]
        T1["Sensor poll task"]
        T2["Reporting task"]
    end
    ISR["I2C ISR"] -->|"post event"| T1
    T1 -->|"queue"| T2
```

- <Which parts run as RTOS tasks vs. bare main-loop vs. interrupt context>
- <Inter-task communication mechanism: queues, events, shared state + locking>
- <Any hard timing constraints (e.g. ISR must not block)>
