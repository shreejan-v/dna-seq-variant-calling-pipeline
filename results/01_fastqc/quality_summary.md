# FastQC Quality Summary

## Overview

Quality assessment was performed using **FastQC** on the raw paired-end DNA sequencing reads before any preprocessing.

The objective of this step was to evaluate sequencing quality and identify any issues that could affect downstream analyses, such as adapter contamination or low-quality bases.

---

## Samples Analysed

| Sample ID |
|-----------|
| SRR11603071 |
| SRR11603072 |
| SRR11603073 |
| SRR11603080 |

---

## Quality Metrics Evaluated

FastQC generated reports for the following metrics:

- Per-base sequence quality
- Per-sequence quality scores
- Per-base GC content
- Per-sequence GC content
- Sequence duplication levels
- Adapter content
- Overrepresented sequences
- Sequence length distribution
- N content

---

## Interpretation

The FastQC reports were reviewed to assess the quality of the raw sequencing reads before preprocessing.

Based on the quality assessment, the sequencing reads were subsequently processed using **fastp** for adapter removal and quality filtering prior to sequence alignment.

---

## Output Files

The FastQC analysis generates the following outputs for each sample:

- HTML quality report
- ZIP archive containing detailed quality metrics
