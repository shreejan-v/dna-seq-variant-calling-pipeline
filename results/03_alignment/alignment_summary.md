# Sequence Alignment Summary

## Overview

Trimmed paired-end sequencing reads were aligned against the **GRCh38 Chromosome 17** reference genome using **BWA-MEM**.

The resulting alignments were processed using **SAMtools** and **Picard** to generate high-quality BAM files for variant calling.

---

## Samples Processed

| Sample ID |
|-----------|
| SRR11603071 |
| SRR11603072 |
| SRR11603073 |
| SRR11603080 |

---

## Alignment Workflow

The alignment stage included:

1. Reference genome indexing
2. Sequence alignment using BWA-MEM
3. SAM to BAM conversion
4. BAM sorting
5. Duplicate processing
6. Reference indexing for downstream analysis

---

## Software Used

| Software | Purpose |
|----------|---------|
| BWA-MEM | Sequence alignment |
| SAMtools | BAM processing |
| Picard | Sequence dictionary creation and BAM processing |

---

## Output Files

The alignment workflow generated:

- SAM alignment files
- BAM files
- Sorted BAM files
- Duplicate-processed BAM files

---

## Outcome

All four sequencing samples were successfully aligned to the reference genome, generating high-quality BAM files suitable for variant discovery.

---

## Next Step

The processed BAM files were analysed using **GATK HaplotypeCaller** to identify genomic variants.
