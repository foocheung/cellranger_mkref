
# Adding the HIV-1 Genome to the Human Genome Reference

## Downloading HIV Genome

Download the HIV genome using the following command:

```sh
wget -r ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/864/765/GCF_000864765.1_ViralProj15476/
```

## Merging HIV Genome with Human Genome/GTF

To prepare the HIV GTF file for transcriptome alignment, follow these steps:

1. **Modify the GTF file:**
   - Ensure that "genes" have annotations with the feature type `exon` in column 3 of the GTF file.
   - Ensure there are annotations with the feature type `transcript` for each transcript feature.

   Reference: [10x Genomics - Cell Ranger ARC](https://www.10xgenomics.com/support/software/cell-ranger-arc/latest/analysis/inputs/mkref)

2. **Append the reformatted HIV GTF file to the human GTF file:**

   ```sh
   cat hiv_reformat.gtf >> genes.gtf
   ```

3. **Modify the HIV FASTA file and append it to the human genome FASTA file:**

   ```sh
   cat GCF_000864765.1_ViralProj15476_genomic.fna | perl -pi -e 's/NC_001802/NC001802.1/g' >> genome.fa
   ```

   Note: Contig names in the FASTA and GTF files cannot include underscores (_).

   Reference: [10x Genomics - Cell Ranger ARC](https://www.10xgenomics.com/support/software/cell-ranger-arc/latest/analysis/inputs/mkref)

## Running `cellranger mkref`

Submit the job to create the reference using `cellranger mkref`:

```sh
sbatch cellranger_mkref_job.sh
```

## Running `cellranger-atac mkref`

Submit the job to create the reference using `cellranger-atac mkref`:

```sh
sbatch cellranger_mkref_job.sh
```
