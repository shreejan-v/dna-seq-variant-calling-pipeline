# Example Variant Records

## Overview

The following examples illustrate the structure of genomic variants identified by GATK HaplotypeCaller.

---

## Example Variant

| Field | Example Value |
|-------|---------------|
| Chromosome | 17 |
| Position | 60241 |
| Reference Allele | G |
| Alternate Allele | A |
| Genotype | 0/1 |
| Read Depth (DP) | 148 |
| Quality Score | 499.64 |

---

## VCF Fields

| Column | Description |
|---------|-------------|
| CHROM | Chromosome |
| POS | Genomic position |
| ID | Variant identifier |
| REF | Reference allele |
| ALT | Alternate allele |
| QUAL | Variant quality score |
| FILTER | Filter status |
| INFO | Variant annotations |
| FORMAT | Genotype format |
| SAMPLE | Sample genotype information |

---

## Purpose

The generated VCF files serve as the primary input for downstream functional annotation using Ensembl Variant Effect Predictor (VEP).
