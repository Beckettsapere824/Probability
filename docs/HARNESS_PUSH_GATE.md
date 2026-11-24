# HARNESS_PUSH_GATE.md — Anti-placeholder / content integrity

**Binding.** From agent-harness transplant.

## Hard procedure

1. Materialize full content first. Never temporary stub "to replace later."
2. Gate: `./tools/assert_no_stub.sh`
3. Push only gated body.
4. After push: re-read size + markers. If stub, restore same turn.

## Forbidden patterns

PLACEHOLDER, PLACEHOLDER_WILL_FAIL, SEE_LOCAL_FILE, TODO_STUB, or near-empty bodies for critical paths.

## Critical paths (this repo)

- AGENT.md, feature_list.json, skills/**, docs/**, tools/**
- nodes/**, data/tree/**, data/prerequisite_tree.yaml, exercises/**, course/**

## Domain add-on

Never replace a large knowledge file with a short pointer unless the human ordered that exact change.
