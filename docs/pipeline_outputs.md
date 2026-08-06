# Pipeline Outputs

## Overview

This document describes the expected output generated at each stage of the DNA-Seq Variant Calling and Functional Annotation Pipeline.

---

# Output Summary

| Step | Tool | Output |
|------|------|--------|
| 1 | FastQC | HTML quality reports and ZIP archives |
| 2 | fastp | Trimmed FASTQ files, HTML report, JSON report |
| 3 | BWA | Indexed reference genome files |
| 4 | BWA-MEM | SAM alignment files |
| 5 | SAMtools | BAM files, sorted BAM files |
| 6 | Picard | Processed BAM files and sequence dictionary |
| 7 | GATK HaplotypeCaller | Compressed VCF files (*.vcf.gz) |
| 8 | Ensembl VEP | Variant annotation reports |

---

# Step 1 – FastQC

### Input

- Paired-end FASTQ files

### Output

- HTML quality report
- ZIP archive containing quality metrics

Purpose:

Evaluate sequencing quality before downstream analysis.

---

# Step 2 – fastp

### Input

- Raw FASTQ files

### Output

- Trimmed FASTQ files
- HTML report
- JSON report

Purpose:

Remove adapters and low-quality bases while generating quality summaries.

---

# Step 3 – Reference Genome Indexing

### Input

- chr17.fa

### Output

Reference index files:

- chr17.fa.amb
- chr17.fa.ann
- chr17.fa.bwt
- chr17.fa.pac
- chr17.fa.sa

Purpose:

Prepare the reference genome for sequence alignment.

---

# Step 4 – Sequence Alignment

### Input

- Trimmed FASTQ files
- Indexed reference genome

### Output

- SAM alignment files

Purpose:

Map sequencing reads to the reference genome.

---

# Step 5 – BAM Processing

### Input

- SAM files

### Output

- BAM files
- Sorted BAM files
- Duplicate-processed BAM files

Purpose:

Prepare alignments for variant discovery.

---

# Step 6 – Variant Calling

### Input

- Processed BAM files

### Output

- Compressed VCF files (*.vcf.gz)
- VCF index files (*.tbi)

Purpose:

Identify genomic variants including SNPs and small insertions/deletions (InDels).

---

# Step 7 – Variant Annotation

### Input

- VCF files

### Output

- Annotated VEP reports
- Variant consequence summaries

Purpose:

Predict the biological effects of identified genomic variants.
