# Commands Used

## Overview

Functional annotation was performed using the **Ensembl Variant Effect Predictor (VEP)**.

Before annotation, the chromosome prefix (`chr`) was removed from the GATK-generated VCF files to ensure compatibility with the Ensembl VEP web interface.

---

## VCF Preparation

```bash
zcat SRR11603071.vcf.gz \
| sed 's/^chr//' \
| bgzip > SRR11603071_ensembl.vcf.gz

tabix -p vcf SRR11603071_ensembl.vcf.gz
```

The same procedure was repeated for:

- SRR11603072
- SRR11603073
- SRR11603080

---

## Functional Annotation

The prepared VCF files were uploaded to the **Ensembl Variant Effect Predictor (VEP) Web Interface** for annotation.

---

## Output

The annotation process generated:

- Gene annotations
- Transcript annotations
- Functional consequence predictions
- Variant effect summaries
