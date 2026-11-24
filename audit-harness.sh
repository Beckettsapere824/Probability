#!/usr/bin/env bash
# audit-harness.sh — from agent-harness (core checks)
set -euo pipefail
REPO="${1:-.}"; cd "$REPO"
pass=0; fail=0
check() { if [[ "$2" == pass ]]; then echo "  PASS  $1"; pass=$((pass+1)); else echo "  FAIL  $1"; fail=$((fail+1)); fi; }
echo "== agent-harness audit (Probability) =="
for f in AGENT.md MEMORY.md feature_list.json progress.md init.sh; do
  [[ -f "$f" ]] && check "$f present" pass || check "$f present" fail
done
for f in session-handoff.md runs.md skills/README.md docs/HARNESS_LESSONS.md docs/HARNESS_PUSH_GATE.md tools/assert_no_stub.sh; do
  [[ -f "$f" ]] && check "$f present" pass || check "$f present" fail
done
if [[ -f progress.md ]] && grep -qiE 'next exact|Next exact|Next step' progress.md; then check "progress Next exact" pass; else check "progress Next exact" fail; fi
echo "Result: $pass passed, $fail failed"
[[ $fail -eq 0 ]] && exit 0 || exit 1
