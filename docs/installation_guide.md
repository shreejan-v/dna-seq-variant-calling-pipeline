# Installation Guide

## Overview

This guide describes how to set up the software environment required to execute the DNA-Seq Variant Calling and Functional Annotation Pipeline.

The pipeline was developed and tested on **Ubuntu 24.04 LTS (WSL2)**.

---

## System Requirements

### Operating System

- Ubuntu 24.04 LTS (Recommended)
- Windows 10/11 with WSL2
- Linux distributions supporting Bash

### Hardware

| Component | Recommended |
|----------|-------------|
| RAM | 16 GB or higher |
| CPU | Multi-core processor |
| Storage | At least 20 GB free disk space |

---

## Required Software

| Software | Purpose |
|----------|---------|
| Java | Required for Picard and GATK |
| FastQC | Raw read quality assessment |
| fastp | Read trimming and quality filtering |
| BWA | Reference genome indexing and alignment |
| SAMtools | Alignment processing |
| Picard | BAM processing |
| GATK | Variant calling |
| Tabix/bgzip | VCF compression and indexing |

---

## Installation

Run the dependency installation script:

```bash
bash scripts/00_install_dependencies.sh
```

Alternatively, install each package manually using the Ubuntu package manager and download GATK from the official Broad Institute release page.

---

## Reference Genome

Download the GRCh38 Chromosome 17 FASTA sequence and place it in the project directory before running the pipeline.

---

## Verify Installation

Confirm that the required software is available:

```bash
java -version
fastqc --version
fastp --version
bwa
samtools --version
```

If all commands execute successfully, the environment is ready for the DNA-Seq pipeline.
