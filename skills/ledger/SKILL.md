---
name: ledger
description: Maintain an append-only multi-session phase ledger; never collapse session boundaries.
---

# ledger

## Rules
- Append only at end of allowed phase.
- Never write future phases in advance.
- One-shot multi-phase completion is a failure.
