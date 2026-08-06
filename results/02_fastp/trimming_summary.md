# Read Trimming Summary

## Overview

Read preprocessing was performed using **fastp** to improve sequencing read quality before alignment to the reference genome.

The preprocessing workflow removed adapter sequences, filtered low-quality reads, and trimmed low-quality bases from the sequencing data.

---

## Samples Processed

| Sample ID |
|-----------|
| SRR11603071 |
| SRR11603072 |
| SRR11603073 |
| SRR11603080 |

---

## Processing Performed

The following preprocessing operations were applied:

- Adapter sequence removal
- Quality filtering
- Low-quality base trimming
- Automatic quality report generation
- Read quality correction

---

## Output Files

Each sample generated:

- Trimmed paired-end FASTQ files
- HTML quality report
- JSON statistics report

---

## Outcome

The preprocessing step improved the overall quality of the sequencing reads and produced high-quality datasets suitable for downstream sequence alignment using BWA-MEM.

---

## Next Step

The trimmed reads were aligned against the **GRCh38 Chromosome 17** reference genome using **BWA-MEM**.
