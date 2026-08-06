# Pipeline Overview

## Introduction

This repository presents a complete DNA-Seq Variant Calling and Functional Annotation workflow developed during the **DrOmics DNA Sequencing Internship**. The pipeline processes raw paired-end sequencing reads and identifies genomic variants using widely adopted bioinformatics tools.

The workflow follows standard best practices for DNA sequencing analysis, including quality control, read preprocessing, sequence alignment, alignment processing, variant calling, and functional annotation.

---

# Pipeline Workflow

```
Raw FASTQ Files
        │
        ▼
Quality Assessment
(FastQC)
        │
        ▼
Read Trimming
(fastp)
        │
        ▼
Reference Genome Indexing
(BWA)
        │
        ▼
Sequence Alignment
(BWA-MEM)
        │
        ▼
SAM → BAM Conversion
(SAMtools)
        │
        ▼
BAM Sorting
(SAMtools)
        │
        ▼
Duplicate Processing
(Picard & SAMtools)
        │
        ▼
Variant Calling
(GATK HaplotypeCaller)
        │
        ▼
Variant Annotation
(Ensembl VEP)
        │
        ▼
Biological Interpretation
```

---

# Pipeline Steps

## Step 1 – Quality Assessment

Raw sequencing reads were assessed using **FastQC** to evaluate sequencing quality, GC content, sequence duplication, adapter contamination, and per-base quality scores.

---

## Step 2 – Read Trimming

**fastp** was used to remove adapter sequences and low-quality bases, improving the overall quality of the sequencing reads.

---

## Step 3 – Reference Genome Preparation

The human reference genome (**GRCh38 Chromosome 17**) was indexed using **BWA** to enable efficient sequence alignment.

---

## Step 4 – Sequence Alignment

Trimmed paired-end reads were aligned against the indexed reference genome using **BWA-MEM**, producing SAM alignment files.

---

## Step 5 – Alignment Processing

SAM files were converted to BAM format, sorted, and processed using **SAMtools** and **Picard** to prepare high-quality alignment files for variant discovery.

---

## Step 6 – Variant Calling

Variants including SNPs and small insertions/deletions (InDels) were identified using **GATK HaplotypeCaller**, generating compressed VCF files.

---

## Step 7 – Variant Annotation

VCF files were annotated using **Ensembl Variant Effect Predictor (VEP)** to determine the genomic location and predicted biological consequence of each variant.
