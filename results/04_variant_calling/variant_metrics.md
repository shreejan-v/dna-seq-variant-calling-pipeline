# Variant Calling Metrics

## Overview

Variant calling was performed using **GATK HaplotypeCaller** after preprocessing, alignment, and BAM file preparation.

The objective of this stage was to identify genomic variants, including **Single Nucleotide Polymorphisms (SNPs)** and **small Insertions/Deletions (InDels)**, by comparing aligned sequencing reads to the GRCh38 reference genome.

---

## Analysis Summary

| Parameter | Description |
|-----------|-------------|
| Variant Caller | GATK HaplotypeCaller |
| Input | Duplicate-processed BAM files |
| Reference Genome | GRCh38 (Chromosome 17) |
| Output | Compressed VCF (*.vcf.gz) |

---

## Variant Detection

The pipeline successfully generated compressed Variant Call Format (VCF) files for all four sequencing samples.

Detected variants include:

- Single Nucleotide Polymorphisms (SNPs)
- Insertions (INS)
- Deletions (DEL)

---

## Pipeline Success

- All samples completed successfully.
- High-confidence variant calls were generated.
- Output files were used for downstream functional annotation using Ensembl VEP.
