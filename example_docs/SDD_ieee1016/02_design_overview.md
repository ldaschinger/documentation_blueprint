## 2. Design Overview

### 2.1 Stakeholder Concerns

| Stakeholder | Concern | Addressed by |
| ----------- | ------- | ------------- |
| Developer   | How to implement/extend a unit | Section 3, unit docs |
| Maintainer  | Why a cross-cutting decision was made | Section 4 |
| Reviewer/Auditor | Traceability from requirement to design | Section 3 (requirement IDs), unit docs |

### 2.2 Selected Viewpoints

Only the viewpoints relevant to this system are used (see the full list of 15
in the [jam01 template](https://github.com/jam01/SDD-Template) for others):

| Viewpoint | Addresses | Where |
| --------- | --------- | ----- |
| Composition | Layering (application/device/middleware/hal_bsp) and module allocation | SAD (Logical/Building Block View) |
| Interface | Public functions of each unit (`inc/*.h`) | Unit docs, "Public Interface" section |
| Interaction | Runtime message sequences (e.g. I2C transactions) | Unit docs, sequence diagrams |
| Information | Register/data layout a unit interprets | Unit docs, "Internal Data" section |
| State Dynamics | Any unit implementing a state machine | Unit docs (add if applicable) |
| Concurrency | Task/ISR structure | SAD (Process View) |
| Deployment | Mapping to target hardware | SAD (Physical/Deployment View) |
