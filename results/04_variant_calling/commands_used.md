# Commands Used

The following command was used to perform variant calling with GATK HaplotypeCaller.

## Example Command

```bash
gatk HaplotypeCaller \
-R chr17.fa \
-I SRR11603071_rmd.bam \
-O SRR11603071.vcf.gz
```

The same workflow was repeated for all four sequencing samples.

---

## Software

- GATK 4.6.2.0

---

## Output

Compressed Variant Call Format (VCF) files (*.vcf.gz) were generated for downstream functional annotation.
