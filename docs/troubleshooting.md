# Troubleshooting Guide

This document lists common issues encountered while executing the DNA-Seq Variant Calling Pipeline and their corresponding solutions.

---

## 1. Picard Command Not Found

### Error

```
picard: command not found
```

### Solution

Run Picard using the Java archive:

```bash
java -jar /usr/share/java/picard.jar
```

---

## 2. GATK Command Not Found

### Error

```
gatk: command not found
```

### Solution

Download GATK from the Broad Institute and execute it using:

```bash
~/gatk-4.6.2.0/gatk
```

---

## 3. bgzip or tabix Not Found

### Error

```
bgzip: command not found
```

or

```
tabix: command not found
```

### Solution

Install Tabix:

```bash
sudo apt install tabix
```

---

## 4. Missing Sequence Dictionary

### Error

```
Sequence dictionary does not exist
```

### Solution

Create the sequence dictionary using Picard:

```bash
java -jar /usr/share/java/picard.jar CreateSequenceDictionary \
R=chr17.fa \
O=chr17.dict
```

---

## 5. Missing FASTA Index

### Error

```
FASTA index file not found
```

### Solution

Generate the FASTA index:

```bash
samtools faidx chr17.fa
```

---

## 6. Ensembl VEP Server Unavailable

### Problem

The Ensembl VEP web server may occasionally be unavailable.

### Solution

Retry later or use one of the official Ensembl mirror websites.

---

## 7. File Permission Issues

### Solution

Grant execute permission before running pipeline scripts:

```bash
chmod +x scripts/*.sh
chmod +x run_pipeline.sh
```

---

## 8. Verify Software Installation

Check that required software is correctly installed:

```bash
java -version
fastqc --version
fastp --version
samtools --version
```
