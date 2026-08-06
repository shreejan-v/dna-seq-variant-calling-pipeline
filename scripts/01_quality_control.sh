#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 1: Quality Assessment
#
# Tool      : FastQC
# Purpose   : Assess the quality of raw paired-end FASTQ files
# Input     : *.fastq.gz
# Output    : FastQC HTML reports and ZIP archives
#
# Author    : Shreejan V
# ============================================================

echo "======================================="
echo " Step 1 : Quality Assessment (FastQC)"
echo "======================================="

# Create output directory
mkdir -p results/01_fastqc

# Run FastQC
fastqc *.fastq.gz \
-o results/01_fastqc

echo ""
echo "FastQC analysis completed successfully."
echo "Reports saved in results/01_fastqc"
