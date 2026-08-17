---
layout: single
title: "Research"
permalink: /research/
author_profile: true
published: true
excerpt: "Memory enhancement and reliability evaluation for LLM-based agents in scientific research."
---

## Research vision

Scientific LLM agents increasingly retrieve literature, call computational tools, and coordinate multi-step workflows. Persistent memory can help them carry evidence and procedures across steps, but it also creates new failure modes: an agent may store an unsupported claim, retrieve an outdated procedure, or recall the right fact without using it in the action that determines a scientific result.

My doctoral research connects three stages of this problem:

<div class="research-flow" aria-label="Dissertation research flow">
  <span>Scientific evidence</span><b>→</b><span>Memory</span><b>→</b><span>Agent behavior</span><b>→</b><span>Validated outcome</span>
</div>

### 1. Multi-source information memory enhancement for scientific tasks

I study how a scientific agent should represent, retrieve, consolidate, and update heterogeneous claims, observations, computational artifacts, procedures, failure cases, and pending intentions. The aim is to preserve each item's provenance, uncertainty, dependencies, and temporal validity, while using held-out validation and regression tests to control memory updates.

**Ongoing prototype:** Procedural Memory Contracts studies localized, verifier-gated updates to agent skills. Candidate updates declare evidence, scope, preservation constraints, and regression checks; held-out scientific validation determines whether an update is accepted.

### 2. Reliability evaluation of memory-driven LLM-agent behavior

Recall accuracy alone does not show whether an agent uses memory correctly. I develop executable and intervention-based evaluations that test how changes in memory access, evidence quality, and tool outputs affect downstream actions. The evaluations report exact success, partial competence, causal sensitivity, calibration, reproducibility, and abstention rather than hiding failures in one aggregate score.

**Current foundation:** MemCasa evaluates memory-in-action with 840 deterministic evaluation units across six memory demands. It is the basis of the first-author manuscript *MemCasa: Can LLM Agents Act on What They Remember?*, currently under review. A subsequent single-model exploratory 24-case, 288-decision inverse-PINN memory pilot did not meet its numerical benefit gate, prespecified and frozen before the full run. Its qualitative audit instead exposed a memory-to-action reliability gap: an agent could recognize an accepted provenance conflict yet fail to execute the required safe action. I treat this as evidence for the research problem, not as a positive method result.

### 3. Domain-agent construction and validation for representative scientific tasks

I will integrate the memory substrate, validation-gated updater, scientific tools, and reliability evaluations into domain agents. In the primary physics-informed inference testbed, an agent will retrieve provenance-tagged observations and prior solver configurations, configure and run tools, and decide whether to report, rerun, or withhold an inferred parameter. One secondary patent-analysis workflow will test whether provenance and cross-document memory transfer to an open-ended setting.

**Current foundations:** My inverse-PINN work is not itself an agent-memory result; it supplies a diagnostic template that separates observation resolution, residual preference, and endpoint delivery. [PatentAgent](https://arxiv.org/abs/2410.21312) provides experience with evidence-intensive pharmaceutical patent analysis.

## Evaluation principles

- Compare no-memory, raw-history, retrieval, structured-memory, and validated-update conditions under matched model and tool budgets.
- Preserve evidence, tool calls, memory operations, intermediate artifacts, and final claims for auditability.
- Use deterministic validators for executable outputs and separate structured evidence checks for open-ended synthesis.
- Require held-out improvement, calibration, provenance checks, regression testing, repeated seeds, and cross-model replication before treating a memory method as reliable.

## Selected projects

| Project | Focus | Status |
|---|---|---|
| MemCasa | Deterministic memory-in-action evaluation | First-author manuscript; under review |
| Inverse-PINN reliability diagnosis | Two-axis attribution of scientific parameter error | First-author manuscript; under review |
| Scientific-memory reliability pilot | Inverse-PINN memory-to-action evaluation | Completed frozen study; benefit gate not met |
| Procedural Memory Contracts | Validation-gated procedural memory updates | Ongoing prototype |
| PatentAgent | Automated pharmaceutical patent analysis | [arXiv preprint](https://arxiv.org/abs/2410.21312) |

For papers and preprints, see the [publication list](/publications/).
