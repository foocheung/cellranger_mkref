# Add HIV1 Genome to Human Genome Reference

## Downloading HIV
- wget -r ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/864/765/GCF_000864765.1_ViralProj15476/

## Merge HIV with Human Genome/GTF
- cat GCF_000864765.1_ViralProj15476_genomic.gtf >> genes.gtf 
- cat GCF_000864765.1_ViralProj15476_genomic.fna >> genome.fa 

## Run cellranger mkref
- sbatch cellranger_mkref_job.sh
