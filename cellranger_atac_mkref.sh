#!/bin/bash
#SBATCH --job-name=cellranger_mkref
#SBATCH --output=cellranger_mkref_%j.out
#SBATCH --error=cellranger_mkref_%j.err
#SBATCH --mem=800G                # Memory allocation

# Load necessary modules or activate the cellranger environment
#module load cellranger/7.2.0-dntehee  # Adjust the version as needed


# Run cellranger mkref
#cellranger mkref --genome=human_hiv_genome --fasta=genome.fa --genes=genes.gtf --localmem=800
/data/chi/PROJECTS/23-309_Tussiwand/Flowcell_222WKJLT1/RUN/cellranger-atac-2.1.0/bin/cellranger-atac mkref --config=/data/chi/TEMP/FOO/TEMP3/CCR/Genome/hg38/MERGED4/config
