## 1. Introduction

### 1.1 Document Purpose

<Why this SDD exists and who uses it: developers implementing units,
maintainers, reviewers checking traceability to requirements.>

### 1.2 Subject Scope

<System name/version. What this SDD covers vs. what's covered by the SAD
(architecture) and the per-unit docs (implementation detail).>

### 1.3 Definitions, Acronyms, and Abbreviations

| Term | Definition |
| ---- | ---------- |
| SDD  | Software Design Description |
| SAD  | Software Architecture Document |
| HAL  | Hardware Abstraction Layer |

### 1.4 References

| Reference | Type | Location |
| --------- | ---- | -------- |
| Software Architecture Document | Normative | `../SAD_arc42/main.md` or `../SAD_4plus1/main.md` |
| Requirements | Normative | <link to SRS> |
| Unit-level design docs | Normative | `../../example_sources/<layer>/<unit>/doc/` |

### 1.5 Document Overview

Section 2 selects which design viewpoints matter for this system. Section 3
lists design views per unit, each linking to where it actually lives. Section
4 tracks decisions that span more than one unit. Section 5 holds the glossary
and other supporting material.
