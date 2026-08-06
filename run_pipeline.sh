#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling and Functional Annotation Pipeline
#
# Master Pipeline Script
#
# This script executes the complete DNA sequencing analysis
# workflow from quality assessment to variant annotation.
#
# Author  : Shreejan V
# Project : DrOmics DNA-Seq Internship
# ============================================================

echo "=================================================="
echo " DNA-Seq Variant Calling Pipeline"
echo "=================================================="

###############################################################
# Step 1
###############################################################

echo ""
echo "Running Step 1 : Quality Assessment"
bash scripts/01_quality_control.sh

###############################################################
# Step 2
###############################################################

echo ""
echo "Running Step 2 : Read Trimming"
bash scripts/02_read_trimming.sh

###############################################################
# Step 3
###############################################################

echo ""
echo "Running Step 3 : Reference Genome Preparation"
bash scripts/03_reference_indexing.sh

###############################################################
# Step 4
###############################################################

echo ""
echo "Running Step 4 : Sequence Alignment"
bash scripts/04_alignment.sh

###############################################################
# Step 5
###############################################################

echo ""
echo "Running Step 5 : BAM Processing"
bash scripts/05_bam_processing.sh

###############################################################
# Step 6
###############################################################

echo ""
echo "Running Step 6 : Variant Calling"
bash scripts/06_variant_calling.sh

###############################################################
# Step 7
###############################################################

echo ""
echo "Running Step 7 : Variant Annotation"
bash scripts/07_variant_annotation.sh

echo ""
echo "=================================================="
echo " Pipeline Completed Successfully!"
echo "=================================================="

echo ""
echo "Final Outputs:"
echo "• FastQC Reports"
echo "• Trimmed FASTQ Files"
echo "• Indexed Reference Genome"
echo "• SAM Files"
echo "• BAM Files"
echo "• Sorted BAM Files"
echo "• Duplicate Removed BAM Files"
echo "• VCF Files"
echo "• VEP Annotation Results"

echo ""
echo "Thank you for using the DNA-Seq Variant Calling Pipeline."
