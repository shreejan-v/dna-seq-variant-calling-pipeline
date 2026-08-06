# Alignment Statistics

## Overview

Sequence alignment was successfully completed for all four DNA sequencing samples using **BWA-MEM**.

---

## Alignment Outputs

| Output | Description |
|--------|-------------|
| SAM | Initial sequence alignment |
| BAM | Binary alignment format |
| Sorted BAM | Coordinate-sorted alignment |
| Duplicate-processed BAM | Final alignment used for variant calling |

---

## Downstream Processing

The processed BAM files were subsequently used as input for:

- GATK HaplotypeCaller
- Variant discovery
- Functional annotation using Ensembl VEP

---

## Conclusion

The alignment workflow produced high-quality processed BAM files that formed the basis for accurate genomic variant identification.
