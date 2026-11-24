# SDST2601A → knowledge-tree coverage (working inventory)

Built by reading full PDF text (pdftotext) of Chapters 1–8 + distribution tables + cookbook.  
Purpose: drive **surgical node enrichment**, not catalog stubs.

Status legend: **covered** (teaching node exists with usable content) · **thin** (node exists but weaker than lecture) · **gap** (no teaching node / stub only).

## Chapter 1 — Introduction
| Topic | Node | Status |
|-------|------|--------|
| Prob vs Stat | M1.1 vicinity | thin |
| Classical / indifference Def 1.1 | M1.9 | thin |
| Birthday (Ex 1.3) | M2.8 | thin |
| Frequency school Def 1.2 | — | **gap** |
| Subjective school Def 1.3, EGS | — | **gap** |

## Chapter 2 — Counting
| Topic | Node | Status |
|-------|------|--------|
| Product/Sum/Subtraction/Division | M0.2, M2.1 | covered |
| Permutation / combination | M0.3 | covered |
| With/without replacement ordered/unordered | M2.1 | covered |
| Partition distinguishable/indistinguishable | M2.6 | thin |
| Generating function Def 2.4 | M2.12 | thin |
| Harder box/object examples | M2.6a | thin |

## Chapter 3 — Probability
| Topic | Node | Status |
|-------|------|--------|
| Sets, Venn, operations | M0.1 | covered |
| Kolmogorov axioms | M1.1 | covered |
| Inclusion-exclusion | M1.2 | covered |
| Conditional probability | M1.3 | covered |
| Total probability / Bayes | M1.4, M1.5 | covered |
| Independence | M1.6 | covered |

## Chapter 4 — Discrete distributions
| Topic | Node | Status |
|-------|------|--------|
| Discrete RV, pmf, cdf | M1.8, M1.8a | covered |
| Bernoulli–Poisson families | M4.* | covered |
| Course-specific numerical examples | various | thin (need lecture examples grafted) |

## Chapter 5 — Continuous distributions  ★ priority
| Topic | Node | Status |
|-------|------|--------|
| Def 5.1 continuous type + pdf properties | **M8.1** | **filling** |
| E/Var/MGF continuous Def 5.2 | M8.1 / M8.2 | filling |
| Uniform Def 5.3 | M8.3 | gap→next |
| Exponential Def 5.4 | M8.4 | gap→next |
| Gamma / chi-squared Def 5.5–5.7 | M8.5, M8.7 | gap |
| Normal Def 5.8 + table use | M8.6 | gap |

## Chapter 6 — Other properties
| Topic | Node | Status |
|-------|------|--------|
| Survival / hazard Def 6.1 | M8.9 | gap |
| Memoryless exponential | M8.4 | gap |
| Quantiles continuous/discrete | — | **gap** |
| Transformations Thm 6.3, lognormal/Weibull | — | **gap** |

## Chapter 7 — Multivariate
| Topic | Node | Status |
|-------|------|--------|
| Joint/marginal discrete | M1.10 | covered |
| Continuous joint | M8.10 | gap |
| Independence of RVs | M1.10 | thin |
| Covariance / correlation Def 7.6–7.7 | M3.12 | thin |
| Cauchy–Schwarz | — | **gap** |

## Chapter 8 — Conditional
| Topic | Node | Status |
|-------|------|--------|
| Conditional pmf/pdf | M5.1, M8.11 | thin / gap |
| Adam’s law (total expectation) | M3.11 | thin |
| Eve’s law (total variance) | — | **gap** |
| Prediction of Y from X | — | **gap** |

## Distribution tables + cookbook
| Topic | Node | Status |
|-------|------|--------|
| Common families formula table | M4 + M8.* | partial |
| Normal/χ²/t critical tables | reference in course/ | keep as reference |
| Cookbook advanced topics | selective later | not Exam-2 core |

## Execution rule (AGENT.md)
- One node (or one small module slice) per edit.
- Match `nodes/M1.1.md` teaching template.
- Graft lecture definitions, worked examples, pitfalls.
- Do not replace tree with catalogs.
