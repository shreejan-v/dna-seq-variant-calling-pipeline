# FastQC Results

## Overview

This directory contains the quality assessment reports generated using **FastQC** for the raw paired-end DNA sequencing reads.

FastQC was performed before any preprocessing to evaluate the overall quality of the sequencing data and determine whether trimming and quality filtering were required.

---

## Input

- Raw paired-end FASTQ files

### Samples Analysed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Output

The FastQC analysis generates:

- HTML quality reports
- ZIP archives containing detailed quality metrics

---

## Quality Metrics Evaluated

FastQC evaluates several important sequencing quality parameters, including:

- Per-base sequence quality
- Per-sequence quality scores
- Per-base GC content
- Sequence duplication levels
- Adapter contamination
- Overrepresented sequences
- Sequence length distribution
- N content

---

## Purpose

The FastQC reports were used to assess the quality of the raw sequencing data before preprocessing. The results indicated that adapter trimming and quality filtering were necessary prior to sequence alignment.

---

## Next Step

The raw sequencing reads were processed using **fastp** for adapter removal and quality filtering before alignment to the reference genome.
