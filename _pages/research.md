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

**Ongoing prototype:** Procedural Memory Contracts studies localized, verifier-gated updates to agent skills and the negative transfer caused by plausible but operationally incorrect instructions.

### 2. Reliability evaluation of memory-driven LLM-agent behavior

Recall accuracy alone does not show whether an agent uses memory correctly. I develop executable and intervention-based evaluations that test how changes in memory access, evidence quality, and tool outputs affect downstream actions. The evaluations report exact success, partial competence, causal sensitivity, calibration, reproducibility, and abstention rather than hiding failures in one aggregate score.

**Current foundation:** MemCasa / SmartMem evaluates memory-in-action with 840 deterministic evaluation units across six memory demands. It is the basis of the first-author submission *MemCasa: Can LLM Agents Act on What They Remember?*, submitted to AAAI-27 and currently under review.

### 3. Domain-agent construction and validation for representative scientific tasks

I will integrate the memory substrate, validation-gated updater, scientific tools, and reliability evaluations into domain agents. Controlled physics-informed inference supports tests against known truth; literature and patent analysis provide open-ended workflows for evaluating provenance and cross-document memory. The goal is to identify reusable principles for deciding when memory improves scientific work and when an output should instead be checked or withheld.

**Current foundations:** My inverse-PINN work diagnoses parameter error by separating observation resolution from residual preference, while [PatentAgent](https://arxiv.org/abs/2410.21312) provides experience with evidence-intensive pharmaceutical patent analysis.

## Evaluation principles

- Compare no-memory, raw-history, retrieval, structured-memory, and validated-update conditions under matched model and tool budgets.
- Preserve evidence, tool calls, memory operations, intermediate artifacts, and final claims for auditability.
- Use deterministic validators for executable outputs and separate structured evidence checks for open-ended synthesis.
- Require held-out improvement, calibration, provenance checks, regression testing, repeated seeds, and cross-model replication before treating a memory method as reliable.

## Selected projects

| Project | Focus | Status |
|---|---|---|
| MemCasa / SmartMem | Deterministic memory-in-action evaluation | First-author AAAI-27 submission; under review |
| Inverse-PINN reliability diagnosis | Two-axis attribution of scientific parameter error | First-author AAAI-27 submission; under review |
| Procedural Memory Contracts | Validation-gated procedural memory updates | Ongoing prototype |
| PatentAgent | Automated pharmaceutical patent analysis | [arXiv preprint](https://arxiv.org/abs/2410.21312) |

For papers and preprints, see the [publication list](/publications/).
