#!/bin/bash

# ============================================================
# DNA-Seq Variant Calling Pipeline
# Step 4: Sequence Alignment
#
# Tool      : BWA-MEM
# Purpose   : Align trimmed paired-end sequencing reads to the
#             human reference genome (GRCh38 Chromosome 17)
#
# Input     :
#   - chr17.fa
#   - Trimmed paired-end FASTQ files
#
# Output    :
#   - SAM alignment files
#
# Author    : Shreejan V
# Project   : DrOmics DNA-Seq Internship
# ============================================================

echo "========================================"
echo " Step 4 : Sequence Alignment (BWA-MEM)"
echo "========================================"

# Sample 1
echo "Aligning SRR11603071..."
bwa mem chr17.fa \
SRR11603071_R1_trimmed.fastq.gz \
SRR11603071_R2_trimmed.fastq.gz \
> SRR11603071.sam

# Sample 2
echo "Aligning SRR11603072..."
bwa mem chr17.fa \
SRR11603072_R1_trimmed.fastq.gz \
SRR11603072_R2_trimmed.fastq.gz \
> SRR11603072.sam

# Sample 3
echo "Aligning SRR11603073..."
bwa mem chr17.fa \
SRR11603073_R1_trimmed.fastq.gz \
SRR11603073_R2_trimmed.fastq.gz \
> SRR11603073.sam

# Sample 4
echo "Aligning SRR11603080..."
bwa mem chr17.fa \
SRR11603080_R1_trimmed.fastq.gz \
SRR11603080_R2_trimmed.fastq.gz \
> SRR11603080.sam

echo ""
echo "========================================"
echo "Sequence alignment completed successfully."
echo "Generated SAM files:"
echo "  - SRR11603071.sam"
echo "  - SRR11603072.sam"
echo "  - SRR11603073.sam"
echo "  - SRR11603080.sam"
echo "========================================"

# NOTE:
# This workflow aligns reads against the GRCh38 Chromosome 17
# reference sequence used during the DrOmics DNA-Seq Internship.
