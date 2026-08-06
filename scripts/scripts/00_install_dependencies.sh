#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 0: Install Dependencies
#
# Purpose:
# Install all software required to run the DNA-Seq
# Variant Calling and Annotation Pipeline.
#
# Operating System:
# Ubuntu 24.04 LTS (WSL2)
#
# Author:
# Shreejan V
#
# Project:
# DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo "Installing DNA-Seq Pipeline Dependencies"
echo "========================================"

###############################################################
# Update package lists
###############################################################

sudo apt update

###############################################################
# Install Java
###############################################################

sudo apt install -y default-jdk

###############################################################
# Install FastQC
###############################################################

sudo apt install -y fastqc

###############################################################
# Install fastp
###############################################################

sudo apt install -y fastp

###############################################################
# Install BWA
###############################################################

sudo apt install -y bwa

###############################################################
# Install SAMtools
###############################################################

sudo apt install -y samtools

###############################################################
# Install Picard
###############################################################

sudo apt install -y picard-tools

###############################################################
# Install Tabix (bgzip)
###############################################################

sudo apt install -y tabix

###############################################################
# Install wget
###############################################################

sudo apt install -y wget

###############################################################
# Download GATK
###############################################################

cd ~

wget https://github.com/broadinstitute/gatk/releases/download/4.6.2.0/gatk-4.6.2.0.zip

unzip gatk-4.6.2.0.zip

echo ""
echo "========================================"
echo "Installation completed successfully!"
echo "========================================"

echo ""
echo "Installed software:"
echo "  • Java"
echo "  • FastQC"
echo "  • fastp"
echo "  • BWA"
echo "  • SAMtools"
echo "  • Picard"
echo "  • Tabix / bgzip"
echo "  • GATK 4.6.2.0"
echo ""
echo "You are now ready to run the DNA-Seq Variant Calling Pipeline."
