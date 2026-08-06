#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 2: Read Trimming and Quality Filtering
#
# Tool      : fastp
# Purpose   : Remove adapter sequences and low-quality bases
# Input     : Paired-end FASTQ files
# Output    : Trimmed FASTQ files + HTML/JSON reports
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 2 : Read Trimming using fastp"
echo "========================================"

# Create output directory
mkdir -p results/02_fastp

# Sample 1
fastp \
-i SRR11603071_1.fastq.gz \
-I SRR11603071_2.fastq.gz \
-o SRR11603071_R1_trimmed.fastq.gz \
-O SRR11603071_R2_trimmed.fastq.gz \
-h results/02_fastp/SRR11603071_fastp.html \
-j results/02_fastp/SRR11603071_fastp.json

# Sample 2
fastp \
-i SRR11603072_1.fastq.gz \
-I SRR11603072_2.fastq.gz \
-o SRR11603072_R1_trimmed.fastq.gz \
-O SRR11603072_R2_trimmed.fastq.gz \
-h results/02_fastp/SRR11603072_fastp.html \
-j results/02_fastp/SRR11603072_fastp.json

# Sample 3
fastp \
-i SRR11603073_1.fastq.gz \
-I SRR11603073_2.fastq.gz \
-o SRR11603073_R1_trimmed.fastq.gz \
-O SRR11603073_R2_trimmed.fastq.gz \
-h results/02_fastp/SRR11603073_fastp.html \
-j results/02_fastp/SRR11603073_fastp.json

# Sample 4
fastp \
-i SRR11603080_1.fastq.gz \
-I SRR11603080_2.fastq.gz \
-o SRR11603080_R1_trimmed.fastq.gz \
-O SRR11603080_R2_trimmed.fastq.gz \
-h results/02_fastp/SRR11603080_fastp.html \
-j results/02_fastp/SRR11603080_fastp.json

echo ""
echo "========================================"
echo "Read trimming completed successfully."
echo "Output saved in results/02_fastp"
echo "========================================"
