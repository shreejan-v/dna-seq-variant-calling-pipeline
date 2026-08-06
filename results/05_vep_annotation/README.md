# Functional Annotation Results

## Overview

This directory contains the functional annotation results generated using the **Ensembl Variant Effect Predictor (VEP)**.

The VCF files produced by GATK HaplotypeCaller were annotated to identify affected genes, transcript information, and the predicted biological consequences of each genomic variant.

---

## Input

- GATK-generated VCF files

### Samples Analysed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Software Used

| Software | Purpose |
|----------|---------|
| Ensembl Variant Effect Predictor (VEP) | Functional annotation |

---

## Annotation Summary

| Sample | Variants | Genes | Transcripts |
|---------|---------:|------:|------------:|
| SRR11603071 | 3,150 | 313 | 2,390 |
| SRR11603072 | 3,299 | 479 | 3,457 |
| SRR11603073 | 13,681 | 1,187 | 6,815 |
| SRR11603080 | 4,837 | 490 | 3,444 |

---

## Biological Interpretation

Functional annotation identified variants across coding and non-coding regions of the genome. The analysis included gene-level and transcript-level annotations together with predicted variant consequences.

The annotation results provide a foundation for downstream interpretation of genomic variation and potential biological significance.

---

## Output

The VEP analysis generated:

- Annotated variant reports
- Gene annotations
- Transcript annotations
- Variant consequence predictions
- Functional interpretation summaries
