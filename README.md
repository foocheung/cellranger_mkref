# Add HIV1 Genome to Human Genome Reference

# For cellranger mkref
## Downloading HIV
- wget -r ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/864/765/GCF_000864765.1_ViralProj15476/

## Merge HIV with Human Genome/GTF
- cat GCF_000864765.1_ViralProj15476_genomic.gtf >> genes.gtf 
- cat GCF_000864765.1_ViralProj15476_genomic.fna >> genome.fa 

## Run cellranger mkref
- sbatch cellranger_mkref_job.sh


# For cellranger-atac mkref
The GCF_000864765.1_ViralProj15476_genomic.gtf needs to be semi-manually modified as follows:
To be considered for transcriptome alignment, genes must have annotations with feature type 'exon' in column 3 of the GTF file.
Additionally, the GTF must have annotations with the feature type 'transcript' for each transcript feature."

The file "https://github.com/foocheung/cellranger_mkref/blob/main/hiv_reformat.gtf" works

/data/chi/PROJECTS/23-309_Tussiwand/Flowcell_222WKJLT1/RUN/cellranger-atac-2.1.0/bin/cellranger-atac mkref --config=/data/chi/PROJECTS/24-418_Fraser_HIV_Reactivation/Bioinformatics/Runs/CCR/Genome/hg38/MERGED3/config &
