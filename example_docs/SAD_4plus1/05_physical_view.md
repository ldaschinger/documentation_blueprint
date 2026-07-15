## Physical View

Mapping of software to hardware.

```{.mermaid width=900 scale=2}
C4Deployment
  title Deployment — I2C Sensor Reader (example)
  Deployment_Node(mcu, "Target MCU", "e.g. STM32/PIC"){
    Container(fw, "Firmware image", "C", "Application + Device + Middleware + HAL")
  }
  System_Ext(sensor, "I2C Sensor", "part number")
  Rel(fw, sensor, "I2C bus", "bus speed")
```

- <Single firmware image / multiple images, if applicable>
- <Physical bus/pin assignment reference, if applicable>
