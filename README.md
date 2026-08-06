# 🧬 DNA-Seq Variant Calling and Functional Annotation Pipeline

![Platform](https://img.shields.io/badge/Platform-Linux-orange)
![Language](https://img.shields.io/badge/Language-Bash-blue)
![Pipeline](https://img.shields.io/badge/Pipeline-DNA--Seq-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

End-to-end DNA sequencing analysis pipeline for variant discovery and functional annotation using FastQC, fastp, BWA-MEM, SAMtools, Picard, GATK HaplotypeCaller and Ensembl Variant Effect Predictor (VEP).

## 📖 Introduction

Next-Generation Sequencing (NGS) technologies have transformed genomics by enabling rapid and cost-effective identification of genetic variants across the genome. Variant calling is a fundamental step in DNA sequencing analysis, allowing researchers to detect single nucleotide polymorphisms (SNPs), insertions, deletions (InDels), and other genomic alterations that may contribute to genetic diversity, disease susceptibility, or biological function.

This project presents a complete end-to-end DNA-Seq variant calling and functional annotation workflow implemented using widely adopted open-source bioinformatics tools. Starting from raw paired-end sequencing reads, the pipeline performs quality assessment, preprocessing, sequence alignment, post-alignment processing, variant discovery, and functional annotation to generate biologically meaningful insights from sequencing data.

The workflow was implemented on publicly available human sequencing datasets from **NCBI BioProject PRJNA627318** and demonstrates practical experience with Linux-based bioinformatics pipelines, reproducible genomics analysis, and industry-standard tools commonly used in academic research and clinical genomics.
---
## 📑 Table of Contents

- Project Overview
- Objectives
- Dataset
- Pipeline Workflow
- Software Used
- Directory Structure
- Methodology
- Results
- Variant Annotation
- Skills Demonstrated
- Acknowledgements
- References
- License
---

## 📌 Project Overview

## 📌 Project Overview

This repository presents an end-to-end DNA sequencing variant calling pipeline implemented on human next-generation sequencing (NGS) data.

The workflow starts from raw paired-end FASTQ files and progresses through quality control, read preprocessing, sequence alignment, BAM processing, variant calling, and functional annotation.

The pipeline follows widely adopted bioinformatics best practices and employs industry-standard software including FastQC, fastp, BWA-MEM, SAMtools, Picard, GATK HaplotypeCaller, and Ensembl VEP.
---

## 🎯 Objectives

- Assess raw sequencing read quality
- Perform adapter trimming and quality filtering
- Align sequencing reads to the human reference genome (GRCh38 Chromosome 17)
- Process alignment files for downstream analysis
- Detect genomic variants using GATK HaplotypeCaller
- Perform functional annotation using Ensembl Variant Effect Predictor (VEP)
- Build a reproducible DNA sequencing workflow

---

## 📂 Dataset

**Organism:** Homo sapiens

**Reference Genome:** GRCh38 (Chromosome 17)

**BioProject:** PRJNA627318

**SRA Project:** SRP258414

### Samples Used

| Sample ID |
|------------|
| SRR11603071 |
| SRR11603072 |
| SRR11603073 |
| SRR11603080 |

---

## 🧪 Tools Used

| Tool                 | Purpose                                |
| -------------------- | -------------------------------------- |
| FastQC               | Raw read quality assessment            |
| fastp                | Adapter trimming and quality filtering |
| BWA-MEM              | Sequence alignment                     |
| SAMtools             | SAM/BAM processing                     |
| Picard               | BAM processing and duplicate handling  |
| GATK HaplotypeCaller | Variant calling                        |
| Ensembl VEP          | Functional annotation                  |

---
## 📁 Repository Structure

```text
dna-seq-variant-calling-pipeline
│
├── docs/
├── figures/
├── workflow/
├── scripts/
├── results/
├── README.md
├── LICENSE
└── requirements.md
```

## 🔬 Pipeline Workflow

```text
Raw FASTQ
      │
      ▼
FastQC
      │
      ▼
fastp
      │
      ▼
BWA-MEM Alignment
      │
      ▼
SAM
      │
      ▼
BAM
      │
      ▼
Sorted BAM
      │
      ▼
Duplicate Removal
      │
      ▼
Picard
      │
      ▼
GATK HaplotypeCaller
      │
      ▼
VCF
      │
      ▼
Ensembl Variant Effect Predictor (VEP)
      │
      ▼
Variant Interpretation
```

---

## 📊 Results

Successfully completed:

* FastQC quality assessment
* Adapter trimming using fastp
* Alignment using BWA-MEM
* SAM to BAM conversion
* BAM sorting
* Duplicate removal
* Picard processing
* Variant calling using GATK HaplotypeCaller
* Functional annotation using Ensembl VEP

---

## 🛠️ Computing Environment

* Ubuntu 24.04 LTS (WSL2)
* Linux Command Line
* Java
* Git
* GitHub

---

## 📚 Skills Demonstrated

* Next-Generation Sequencing (NGS)
* DNA-Seq Analysis
* Variant Calling
* Human Genomics
* Functional Annotation
* Linux
* Bash
* Bioinformatics Workflow Development

---

## 🙏 Acknowledgements

This project was completed as part of the **DrOmics DNA Sequencing Internship**. The workflow was implemented and executed using publicly available human sequencing data from **BioProject PRJNA627318**.

---

## 📄 License

This project is licensed under the MIT License.

---

**Author**

**Shreejan V**

SRM Institute of Science and Technology

B.Tech Biotechnology (Computational Biology)

GitHub: https://github.com/shreejan-v
