#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 3: Reference Genome Preparation
#
# Tool      : BWA
# Purpose   : Index the reference genome for sequence alignment
# Input     : chr17.fa
# Output    : BWA index files
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 3 : Reference Genome Indexing"
echo "========================================"

# Index the reference genome
bwa index chr17.fa

echo ""
echo "========================================"
echo "Reference genome indexing completed."
echo "Generated index files:"
echo "  - chr17.fa.amb"
echo "  - chr17.fa.ann"
echo "  - chr17.fa.bwt"
echo "  - chr17.fa.pac"
echo "  - chr17.fa.sa"
echo "========================================"
