#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 6: Variant Calling
#
# Tool(s)   :
#   - Picard
#   - SAMtools
#   - GATK HaplotypeCaller
#
# Purpose   :
#   Prepare the reference genome and identify genomic variants
#   from aligned sequencing reads.
#
# Input     :
#   - chr17.fa
#   - Duplicate-removed BAM files
#
# Output    :
#   - chr17.dict
#   - chr17.fa.fai
#   - Compressed VCF files (*.vcf.gz)
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 6 : Variant Calling"
echo "========================================"

###############################################################
# Step 1 : Create Sequence Dictionary
###############################################################

echo "Creating sequence dictionary..."

java -jar /usr/share/java/picard.jar CreateSequenceDictionary \
R=chr17.fa \
O=chr17.dict

###############################################################
# Step 2 : Index Reference Genome
###############################################################

echo "Indexing reference genome..."

samtools faidx chr17.fa

###############################################################
# Step 3 : Variant Calling
###############################################################

echo "Running GATK HaplotypeCaller..."

###############################################################
# Sample 1
###############################################################

~/gatk-4.6.2.0/gatk HaplotypeCaller \
-R chr17.fa \
-I SRR11603071_rmd.bam \
-O SRR11603071.vcf.gz

###############################################################
# Sample 2
###############################################################

~/gatk-4.6.2.0/gatk HaplotypeCaller \
-R chr17.fa \
-I SRR11603072_rmd.bam \
-O SRR11603072.vcf.gz

###############################################################
# Sample 3
###############################################################

~/gatk-4.6.2.0/gatk HaplotypeCaller \
-R chr17.fa \
-I SRR11603073_rmd.bam \
-O SRR11603073.vcf.gz

###############################################################
# Sample 4
###############################################################

~/gatk-4.6.2.0/gatk HaplotypeCaller \
-R chr17.fa \
-I SRR11603080_rmd.bam \
-O SRR11603080.vcf.gz

echo ""
echo "========================================"
echo "Variant calling completed successfully."
echo ""
echo "Generated files:"
echo "  - SRR11603071.vcf.gz"
echo "  - SRR11603072.vcf.gz"
echo "  - SRR11603073.vcf.gz"
echo "  - SRR11603080.vcf.gz"
echo "========================================"
