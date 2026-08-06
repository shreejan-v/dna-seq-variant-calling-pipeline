#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 7: Variant Annotation
#
# Tool      : Ensembl Variant Effect Predictor (VEP)
#
# Purpose   :
#   Prepare GATK-generated VCF files for functional annotation
#   using the Ensembl VEP Web Interface.
#
# Input     :
#   - *.vcf.gz
#
# Output    :
#   - VEP annotation reports
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 7 : Variant Annotation (Ensembl VEP)"
echo "========================================"

###############################################################
# Prepare VCF files for Ensembl VEP
###############################################################

echo "Preparing VCF files..."

###############################################################
# Sample 1
###############################################################

zcat SRR11603071.vcf.gz \
| sed 's/^chr//' \
| bgzip > SRR11603071_ensembl.vcf.gz

tabix -p vcf SRR11603071_ensembl.vcf.gz

###############################################################
# Sample 2
###############################################################

zcat SRR11603072.vcf.gz \
| sed 's/^chr//' \
| bgzip > SRR11603072_ensembl.vcf.gz

tabix -p vcf SRR11603072_ensembl.vcf.gz

###############################################################
# Sample 3
###############################################################

zcat SRR11603073.vcf.gz \
| sed 's/^chr//' \
| bgzip > SRR11603073_ensembl.vcf.gz

tabix -p vcf SRR11603073_ensembl.vcf.gz

###############################################################
# Sample 4
###############################################################

zcat SRR11603080.vcf.gz \
| sed 's/^chr//' \
| bgzip > SRR11603080_ensembl.vcf.gz

tabix -p vcf SRR11603080_ensembl.vcf.gz

echo ""
echo "========================================"
echo "VCF preparation completed."
echo "========================================"

echo ""
echo "Next Step:"
echo "1. Open https://www.ensembl.org/Tools/VEP"
echo "2. Upload the *_ensembl.vcf.gz file"
echo "3. Select Homo sapiens (GRCh38)"
echo "4. Run Variant Effect Predictor"
echo "5. Download the annotation results"

echo ""
echo "========================================"
echo "Variant annotation completed."
echo "========================================"
