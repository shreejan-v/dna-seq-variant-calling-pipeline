# Variant Calling Statistics

## Overview

Genomic variants were identified using **GATK HaplotypeCaller** from four human DNA sequencing samples obtained from **NCBI BioProject PRJNA627318**.

Variant calling was performed on processed BAM files aligned against the **GRCh38 Chromosome 17** reference genome.

---

## Samples Analysed

| Sample ID |
|-----------|
| SRR11603071 |
| SRR11603072 |
| SRR11603073 |
| SRR11603080 |

---

## Variant Statistics

| Sample | Unique Variants |
|---------|---------------:|
| SRR11603071 | 3,150 |
| SRR11603072 | 3,299 |
| SRR11603073 | 13,681 |
| SRR11603080 | 4,837 |

---

## Overall Statistics

| Metric | Value |
|---------|------:|
| Samples Analysed | 4 |
| Total Unique Variants | 24,967 |
| Variant Calling Software | GATK HaplotypeCaller |
| Reference Genome | GRCh38 (Chromosome 17) |

---

## Output Files

The variant calling workflow generated:

- SRR11603071.vcf.gz
- SRR11603072.vcf.gz
- SRR11603073.vcf.gz
- SRR11603080.vcf.gz

---

## Conclusion

Variant calling was successfully completed for all four sequencing samples, producing high-confidence Variant Call Format (VCF) files for downstream functional annotation using Ensembl Variant Effect Predictor (VEP).
