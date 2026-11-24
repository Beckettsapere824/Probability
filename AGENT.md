# AGENT.md — Probability (agent-harness transplant)

**Upstream harness:** `Beckettsapere824/agent-harness`  
This repo uses the **real** portable pack (`skills/` ×15, `docs/HARNESS_*`, `init.sh`, `audit-harness.sh`, `tools/assert_no_stub.sh`).  
**Do not invent a thinner parallel harness.** Improvements go back upstream via `propose-improvement`.

**Read order (mandatory before ANY write):**  
`AGENT.md` → `MEMORY.md` → `docs/HARNESS_LESSONS.md` → skim `docs/HARNESS_PUSH_GATE.md` → `feature_list.json` → `progress.md` → `session-handoff.md` / `runs.md` → skim `skills/README.md` → (Orches) claim identity → domain files as needed.

Also read when under Orches `learn-*`:  
`Beckettsapere824/c-machine-learning` → `STUDY_BOARD.md`, `learning/mastery.md`.

Run `./init.sh` when shell available. Prefer `./tools/assert_no_stub.sh` before non-trivial push.

---

## Mission (domain)

Guided bilingual probability knowledge tree (STAT2601). Peer track to ML; shared board on c-machine-learning.

---

## HARD BANS (domain + push-gate)

1. **Never delete** bulk `nodes/*`, `data/tree/*`, `exercises/*`, `course/**`.
2. **Never** replace a large knowledge file with PLACEHOLDER / empty pointer unless human ordered that exact change.
3. **Never** “simplify” by collapsing the whole tree in one shot.
4. **Surgical edits only** — one node or one module section.
5. If already deleted this session: **stop**, report, restore — do not continue cleanup.
6. Follow `skills/push-gate` and `docs/HARNESS_PUSH_GATE.md`.

---

## Multi-agent

One shared harness in this repo. Role differences live in Orches identities (`learn-teach-*`, etc.), not forked AGENT.md copies.

---

## Working rules (from upstream)

- One feature / one focus at a time (`feature_list.json`).
- Verification + evidence before “done”.
- Local first → immediate push.
- Anti-drift assertion every dialog.
- Compliance review misses = DIALOG_MISS (see `docs/COMPLIANCE_REVIEW.md`).

---

## End of session

Update progress (**Next exact**), handoff fields, prepend `runs.md`, release Orches claim if any.
