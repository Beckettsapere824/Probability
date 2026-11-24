# SDST2601A → Probability nodes mapping

Indexed 2026-11-24 by learn-library-1.  
Course extracts: `course/SDST2601A/`. Teaching nodes: `nodes/`. Machine tree: `data/prerequisite_tree.yaml`.

**Detail level of chapter extracts**: structural (definitions, theorems, key examples, formula tables). Enough for catalog + mapping; not yet full teaching-node quality. Continuous topics were the main gap in the existing tree and are now indexed as **M8 stubs** (content empty).

## Chapter → nodes

| Course file | Primary existing nodes (content ready) | New / gap nodes (stub) | Notes |
|-------------|----------------------------------------|------------------------|-------|
| chapter-01.md | M1.1, M1.9 | — | Classical school, gambler’s problem |
| chapter-02.md | M0.2, M0.3, M2.1 | — | Product / sum / division rules, permutation |
| chapter-03.md | M0.1, M1.1, M1.2 | — | Sets, Venn, Kolmogorov axioms |
| chapter-04.md | M1.8, M1.8a, M4.* | — | Discrete RV, pmf; families in M4 |
| chapter-05.md | — | **M8.1, M8.2** | Continuous RV, pdf properties |
| chapter-06.md | — | **M8.9** | Survival S(t), hazard λ(t), memoryless |
| chapter-07.md | M1.10, M2.9, M4.7 | **M8.10** | Joint discrete ready; continuous joint stub |
| chapter-08.md | M5.1, M1.3 | **M8.11** | Discrete conditional ready; continuous stub |
| distributions-summary.md | M4.1–M4.7 (discrete rows) | **M8.3–M8.8** | Continuous families: U, Exp, Gamma, Normal, χ²/t/F, Beta |

## Discrete coverage (already strong)

| Family | Node(s) |
|--------|---------|
| Bernoulli | M4.1 |
| Binomial | M4.2, M4.2a, M4.3 |
| Geometric | M4.4, M4.4a |
| Negative binomial | M4.5, M4.5a |
| Hypergeometric | M4.7, M2.9 |
| Poisson | M4.6, M4.6a |
| Discrete uniform | M4.9 |

## Continuous coverage (indexed stubs only)

| Topic | Node | status |
|-------|------|--------|
| Continuous RV + pdf | M8.1 | stub |
| pdf properties / normalize | M8.2 | stub |
| Uniform | M8.3 | stub |
| Exponential + memoryless | M8.4 | stub |
| Gamma | M8.5 | stub |
| Normal | M8.6 | stub |
| χ² / t / F | M8.7 | stub |
| Beta | M8.8 | stub |
| Survival & hazard | M8.9 | stub |
| Continuous joint / marginal | M8.10 | stub |
| Continuous conditional | M8.11 | stub |

## How library vs teach should use this

1. **Library**: keep this map and `course/SDST2601A/*` in sync with new drops; extend stubs only when a new course topic appears.
2. **Teach**: when human asks for continuous topics, fill the corresponding `nodes/M8.*.md` from the course extract + standard formulas; then clear `status: stub` in the YAML.
3. **Assess**: treat M8.* as unknown until content exists; discrete M0–M7 remain the active Exam-2 spine.

## study_order note

After restoring `data/prerequisite_tree.yaml` from commit `ec0aff8` and merging `M8_TREE_FRAGMENT.yaml`, study_order should end with `[M8.1 … M8.11]`. Topology: M8.1 ← M1.8; continuous families ← M8.1; survival ← M8.1; continuous joint ← M8.1 + M1.10.

## Status note (2026-11-24 evening)

- `nodes/M8.*.md` stubs and this NODE_MAP are live.
- `data/prerequisite_tree.yaml` needs one restore step from commit `ec0aff8` (accidental PLACEHOLDER write during bulk push). See recovery comment currently in that file; then merge `course/SDST2601A/M8_TREE_FRAGMENT.yaml`.
