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
## 📄 Abstract

This project implements a complete DNA sequencing variant calling pipeline using publicly available human next-generation sequencing (NGS) datasets. Starting from raw paired-end sequencing reads, the workflow performs quality assessment, read preprocessing, sequence alignment, post-alignment processing, variant calling, and functional annotation using industry-standard bioinformatics tools. The pipeline demonstrates a reproducible Linux-based workflow for identifying and interpreting genomic variants and provides practical experience with widely adopted tools used in genomics research.
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
## ⚙️ Methodology

The DNA-Seq variant calling workflow was performed using publicly available human sequencing datasets from NCBI BioProject **PRJNA627318**. The analysis was carried out on Ubuntu 24.04 LTS (WSL2) using widely adopted bioinformatics tools.

### 1. Quality Assessment

Raw paired-end FASTQ files were evaluated using **FastQC** to assess sequencing quality, GC content, sequence duplication levels, adapter contamination, and per-base sequence quality.

### 2. Read Preprocessing

Raw reads were processed using **fastp** to remove adapter sequences, filter low-quality reads, and improve the overall quality of the sequencing data before downstream analysis.

### 3. Reference Genome Preparation

The human reference genome (GRCh38 Chromosome 17) was downloaded and indexed using **BWA**, enabling efficient sequence alignment.

### 4. Sequence Alignment

Filtered paired-end reads were aligned against the indexed human reference genome using **BWA-MEM**, generating Sequence Alignment/Map (SAM) files.

### 5. Alignment Processing

SAM files were converted to Binary Alignment/Map (BAM) format using **SAMtools**. The BAM files were subsequently sorted to organize alignments according to genomic coordinates.

### 6. Duplicate Handling

PCR duplicates and alignment metadata were processed using **SAMtools** and **Picard** to prepare high-quality alignment files for variant discovery.

### 7. Variant Calling

Genomic variants, including single nucleotide polymorphisms (SNPs) and small insertions/deletions (InDels), were identified using **GATK HaplotypeCaller**, producing Variant Call Format (VCF) files.

### 8. Variant Annotation

The generated VCF files were functionally annotated using **Ensembl Variant Effect Predictor (VEP)** to determine variant consequences, affected genes, transcript information, and known genomic annotations.

### 9. Result Interpretation

Annotated variants were reviewed to examine genomic locations, functional consequences, and transcript-level effects, providing biological interpretation of the identified variants.
---

## 📊 Results

The complete DNA-Seq workflow was successfully executed for four human sequencing samples.

### Summary

| Sample | Variant Calling | VEP Annotation |
|---------|----------------|---------------|
| SRR11603071 | ✅ Completed | ✅ Completed |
| SRR11603072 | ✅ Completed | ✅ Completed |
| SRR11603073 | ✅ Completed | ✅ Completed |
| SRR11603080 | ✅ Completed | ✅ Completed |

### Pipeline Outcomes

- Successfully processed four paired-end sequencing datasets
- Generated sorted BAM files
- Performed duplicate handling
- Identified genomic variants using GATK HaplotypeCaller
- Annotated variants using Ensembl Variant Effect Predictor (VEP)
---
## 📈 Project Statistics

| Metric | Value |
|---------|------:|
| Organism | Homo sapiens |
| Samples Analysed | 4 |
| Total Variants Identified | XXXX |
| Total Variants Annotated | XXXX |
| Genes Affected | XXXX |
| Novel Variants | XXXX |
| Known Variants | XXXX |
| Pipeline Completion | 100% |
| Bioinformatics Tools Used | 7 |
| Pipeline Stages | 8 |
---

## 🛠️ Computing Environment

| Component | Version |
|-----------|---------|
| Operating System | Ubuntu 24.04 LTS (WSL2) |
| Java | OpenJDK 21 |
| FastQC | Installed via Ubuntu package manager |
| fastp | Installed via Ubuntu package manager |
| BWA | 0.7.17 |
| SAMtools | 1.19 |
| Picard | 3.1.1 |
| GATK | 4.6.2.0 |
| Ensembl VEP | Web Version |

---

## 📚 Skills Demonstrated

| Domain | Skills |
|---------|--------|
| Bioinformatics | Variant Calling, DNA Sequencing |
| Programming | Bash |
| Operating System | Linux |
| Tools | GATK, BWA, Picard, SAMtools, VEP |

---
## 🚀 Future Improvements

Although this pipeline successfully performs DNA-Seq variant calling and functional annotation, several enhancements can further improve its analytical capabilities:

- Perform joint variant calling across multiple samples to improve variant detection consistency.
- Apply Variant Quality Score Recalibration (VQSR) or advanced filtering strategies for higher-confidence variant calls.
- Integrate additional annotation databases such as ClinVar, dbNSFP, or gnomAD for clinical and population-level interpretation.
- Perform downstream pathway and gene enrichment analyses to investigate the biological significance of identified variants.
- Visualize variants using Integrative Genomics Viewer (IGV) for manual validation and inspection.
- Automate the complete workflow using workflow management systems such as Snakemake or Nextflow for improved reproducibility and scalability.
- Containerize the pipeline using Docker or Singularity to simplify deployment across different computing environments.
- Extend the workflow to whole-genome or whole-exome sequencing datasets for large-scale genomic studies.
---

## 🙏 Acknowledgements

This project was completed as part of the **DrOmics DNA Sequencing Internship**. The workflow was implemented and executed using publicly available human sequencing data from **BioProject PRJNA627318**.

---
## 📖 References

1. Andrews S. FastQC.

2. Chen et al. fastp.

3. Li H. BWA-MEM.

4. Li et al. SAMtools.

5. Picard Toolkit.

6. Van der Auwera et al. GATK Best Practices.

7. McLaren et al. Ensembl Variant Effect Predictor.
   
--- 
## 📄 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

**Shreejan V**

B.Tech Biotechnology (Computational Biology)

SRM Institute of Science and Technology

GitHub: https://github.com/shreejan-v

Project completed as part of the DrOmics DNA Sequencing Internship.

SRM Institute of Science and Technology

B.Tech Biotechnology (Computational Biology)

GitHub: https://github.com/shreejan-v
