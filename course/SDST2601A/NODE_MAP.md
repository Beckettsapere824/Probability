# SDST2601A → Probability nodes mapping

Indexed 2026-11-24 by learn-library-1.  
Course extracts: `course/SDST2601A/`. Teaching nodes: `nodes/`. Knowledge tree: `data/tree/` + `data/prerequisite_tree.yaml`.

**Detail level of chapter extracts**: structural (definitions, theorems, key examples, formula tables). Enough for catalog + mapping; not yet full teaching-node quality. Continuous topics were the main gap and are indexed as **M8 stubs** (content empty).

## Knowledge tree layout (restored)

| Path | Role |
|------|------|
| `data/prerequisite_tree.yaml` | Index / modules list (multipart pointer) |
| `data/tree/00_meta.yaml` | meta header |
| `data/tree/M0.yaml` … `M8.yaml` | Full node definitions by module |
| `data/tree/99_study_order.yaml` | study_order + quality_checks |
| `nodes/M8.*.md` | Continuous stubs (index only) |

Assemble single file if needed:  
`cat data/tree/00_meta.yaml data/tree/M{0..8}.yaml data/tree/99_study_order.yaml`

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

1. **Library**: keep this map and `course/SDST2601A/*` in sync; extend stubs only when a new course topic appears.
2. **Teach**: when human asks for continuous topics, fill `nodes/M8.*.md` from course extract + standard formulas; clear `status: stub` in `data/tree/M8.yaml`.
3. **Assess**: treat M8.* as unknown until content exists; discrete M0–M7 remain the active Exam-2 spine.
