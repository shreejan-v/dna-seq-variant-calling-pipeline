# Variant Calling Results

## Overview

This directory contains the genomic variants identified using **GATK HaplotypeCaller**.

Following alignment processing, high-quality BAM files were analysed to detect genomic variants, including single nucleotide polymorphisms (SNPs) and small insertions/deletions (InDels).

---

## Input

- Duplicate-processed BAM files
- GRCh38 Chromosome 17 reference genome

### Samples Analysed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Software Used

| Software | Purpose |
|----------|---------|
| GATK HaplotypeCaller | Variant discovery |

---

## Output

The variant calling workflow generated:

- Compressed Variant Call Format (VCF) files (*.vcf.gz)
- Tabix index files (*.tbi)

---

## Variant Summary

| Sample | Unique Variants |
|---------|---------------:|
| SRR11603071 | 3,150 |
| SRR11603072 | 3,299 |
| SRR11603073 | 13,681 |
| SRR11603080 | 4,837 |

**Total Unique Variants Identified:** **24,967**

---

## Purpose

The identified variants were used for downstream functional annotation using Ensembl Variant Effect Predictor (VEP).

---

## Next Step

The generated VCF files were annotated using Ensembl VEP to determine their functional consequences and affected genes.
