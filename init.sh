#!/usr/bin/env bash
# init.sh — transplanted from agent-harness; study-repo checks
set -euo pipefail
echo "== Probability / agent-harness init =="
required_files=("AGENT.md" "MEMORY.md" "feature_list.json" "progress.md")
missing=0
for f in "${required_files[@]}"; do
  if [[ ! -f "$f" ]]; then echo "MISSING: $f"; missing=1; else echo "OK: $f"; fi
done
if [[ $missing -ne 0 ]]; then echo "init failed"; exit 1; fi
for f in docs/HARNESS_LESSONS.md docs/HARNESS_PUSH_GATE.md tools/assert_no_stub.sh skills/README.md; do
  if [[ -f "$f" ]]; then echo "OK: $f"; else echo "NOTE: $f missing"; fi
done
if command -v python3 >/dev/null 2>&1; then
  python3 -c "import json; json.load(open('feature_list.json'))" && echo "OK: feature_list.json JSON" || { echo "FAIL JSON"; exit 1; }
fi
echo "Hint: ./audit-harness.sh && ./tools/assert_no_stub.sh"
echo "== init complete =="
