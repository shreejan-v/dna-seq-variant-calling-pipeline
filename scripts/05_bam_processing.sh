#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 5: BAM Processing
#
# Tool      : SAMtools
# Purpose   :
#   - Convert SAM to BAM
#   - Sort BAM files
#   - Remove duplicate reads
#
# Input     :
#   - SAM files
#
# Output    :
#   - BAM files
#   - Sorted BAM files
#   - Duplicate-removed BAM files
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 5 : BAM Processing (SAMtools)"
echo "========================================"

############################################
# Convert SAM to BAM
############################################

echo "Converting SAM to BAM..."

samtools view -bS SRR11603071.sam > SRR11603071.bam
samtools view -bS SRR11603072.sam > SRR11603072.bam
samtools view -bS SRR11603073.sam > SRR11603073.bam
samtools view -bS SRR11603080.sam > SRR11603080.bam

############################################
# Sort BAM files
############################################

echo "Sorting BAM files..."

samtools sort -o SRR11603071_sorted.bam SRR11603071.bam
samtools sort -o SRR11603072_sorted.bam SRR11603072.bam
samtools sort -o SRR11603073_sorted.bam SRR11603073.bam
samtools sort -o SRR11603080_sorted.bam SRR11603080.bam

############################################
# Remove PCR duplicates
############################################

echo "Removing duplicate reads..."

samtools rmdup -sS SRR11603071_sorted.bam SRR11603071_rmd.bam
samtools rmdup -sS SRR11603072_sorted.bam SRR11603072_rmd.bam
samtools rmdup -sS SRR11603073_sorted.bam SRR11603073_rmd.bam
samtools rmdup -sS SRR11603080_sorted.bam SRR11603080_rmd.bam

echo ""
echo "========================================"
echo "BAM processing completed successfully."
echo ""
echo "Generated files:"
echo "  - *.bam"
echo "  - *_sorted.bam"
echo "  - *_rmd.bam"
echo "========================================"
