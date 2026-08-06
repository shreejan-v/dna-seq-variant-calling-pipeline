# 🧬 DNA-Seq Variant Calling and Functional Annotation Pipeline

An end-to-end DNA sequencing analysis pipeline for variant discovery and functional annotation using industry-standard bioinformatics tools. This project was completed as part of the **DrOmics DNA Sequencing Internship** using publicly available human next-generation sequencing (NGS) data.

---

## 📌 Project Overview

This repository demonstrates a complete DNA-Seq variant calling workflow, beginning with raw paired-end FASTQ files and ending with functionally annotated genomic variants.

The pipeline includes:

* Quality assessment of raw sequencing reads
* Adapter trimming and quality filtering
* Read alignment to the human reference genome
* BAM processing and duplicate handling
* Variant calling using GATK HaplotypeCaller
* Functional annotation using Ensembl Variant Effect Predictor (VEP)

---

## 🎯 Objectives

* Perform quality control on raw sequencing reads
* Improve read quality through trimming and filtering
* Align reads to the human reference genome (GRCh38 Chromosome 17)
* Identify genomic variants using GATK
* Annotate variants using Ensembl VEP
* Build a reproducible DNA-Seq analysis workflow

---

## 📂 Dataset

**Source:** NCBI Sequence Read Archive (SRA)

**BioProject:** PRJNA627318

**SRA Project:** SRP258414

### Samples

* SRR11603071
* SRR11603072
* SRR11603073
* SRR11603080

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
