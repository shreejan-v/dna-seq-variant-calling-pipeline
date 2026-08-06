# DNA-Seq Pipeline Workflow

## Overview

This figure illustrates the complete DNA-Seq Variant Calling and Functional Annotation Pipeline implemented during the **DrOmics DNA Sequencing Internship**.

The workflow demonstrates the sequential processing of raw paired-end DNA sequencing reads into biologically interpretable genomic variants using widely adopted bioinformatics tools.

---

## Workflow Stages

1. **Quality Assessment (FastQC)**
   - Evaluates the quality of raw sequencing reads.
   - Identifies low-quality bases, adapter contamination, GC content, and sequence duplication.

2. **Read Preprocessing (fastp)**
   - Removes adapter sequences.
   - Performs quality filtering and trimming.
   - Generates high-quality reads for downstream analysis.

3. **Sequence Alignment (BWA-MEM)**
   - Aligns trimmed reads to the **GRCh38 Chromosome 17** reference genome.
   - Produces SAM/BAM alignment files for further processing.

4. **Variant Calling (GATK HaplotypeCaller)**
   - Detects genomic variants, including SNPs and small insertions/deletions (InDels).
   - Generates compressed VCF files for each sample.

5. **Functional Annotation (Ensembl VEP)**
   - Predicts the biological consequences of genomic variants.
   - Identifies affected genes, transcripts, and functional annotations.

---

## Samples Analysed

- SRR11603071
- SRR11603072
- SRR11603073
- SRR11603080

---

## Reference Genome

**GRCh38 – Chromosome 17**

---

## Pipeline Outputs

The workflow produces:

- FastQC quality reports
- Trimmed FASTQ files
- Processed BAM files
- Variant Call Format (VCF) files
- Functional annotation reports generated using Ensembl VEP

---

## Figure

![DNA-Seq Pipeline Workflow](dna_seq_pipeline_workflow.png)
