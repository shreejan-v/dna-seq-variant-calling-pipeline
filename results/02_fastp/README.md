# Read Trimming Results

## Overview

This directory contains the outputs generated after preprocessing the raw sequencing reads using **fastp**.

The objective of this step was to improve read quality by removing adapter sequences and filtering low-quality bases before alignment.

---

## Input

- Raw paired-end FASTQ files

### Samples Processed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Output

The fastp workflow generates:

- Trimmed paired-end FASTQ files
- HTML quality report
- JSON quality report

---

## Processing Performed

The following preprocessing operations were carried out:

- Adapter removal
- Quality filtering
- Low-quality base trimming
- Read quality correction
- Automatic report generation

---

## Purpose

Read preprocessing improves the quality of sequencing data and reduces alignment errors during downstream analysis.

---

## Next Step

The trimmed sequencing reads were aligned against the **GRCh38 Chromosome 17** reference genome using **BWA-MEM**.
