# Sequence Alignment Results

## Overview

This directory contains the sequence alignment and alignment processing results generated during the DNA-Seq Variant Calling Pipeline.

Following quality assessment and read preprocessing, the trimmed paired-end sequencing reads were aligned to the **GRCh38 Chromosome 17** reference genome using **BWA-MEM**.

The resulting alignments were processed using **SAMtools** and **Picard** to produce high-quality BAM files for downstream variant calling.

---

## Input

- Trimmed paired-end FASTQ files
- Indexed reference genome (GRCh38 Chromosome 17)

### Samples Processed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Software Used

| Software | Purpose |
|----------|---------|
| BWA-MEM | Sequence alignment |
| SAMtools | SAM/BAM processing |
| Picard | Sequence dictionary creation and BAM processing |

---

## Processing Workflow

The alignment stage included the following steps:

1. Reference genome indexing
2. Sequence alignment using BWA-MEM
3. SAM to BAM conversion
4. BAM sorting
5. Duplicate processing
6. Reference indexing for downstream analysis

---

## Output

The alignment workflow generated:

- SAM alignment files
- BAM files
- Sorted BAM files
- Duplicate-processed BAM files

---

## Purpose

These processed BAM files served as the input for variant discovery using **GATK HaplotypeCaller**.

---

## Next Step

The processed BAM files were analysed using GATK HaplotypeCaller to identify genomic variants.
