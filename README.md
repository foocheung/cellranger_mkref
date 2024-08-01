# Add HIV1 Genome to Human Genome Reference

## Downloading HIV
- wget -r ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/864/765/GCF_000864765.1_ViralProj15476/

## Merge HIV with Human Genome/GTF
The GCF_000864765.1_ViralProj15476_genomic.gtf needs to be semi-manually modified as follows:
To be considered for transcriptome alignment, 
- "genes must have annotations with feature type 'exon' in column 3 of the GTF file".
- "annotations with the feature type 'transcript' for each transcript feature".<br>
reference: https://www.10xgenomics.com/support/software/cell-ranger-arc/latest/analysis/inputs/mkref

- cat hiv_reformat.gtf >> genes.gtf 
- cat GCF_000864765.1_ViralProj15476_genomic.fna | perl -pi -e s'/NC_001802/NC001802.1/g' >> genome.fa <br>
- "contigs cannot have underscore "contig names in the FASTA and GTF files cannot include underscores (_)" <br>
reference: https://www.10xgenomics.com/support/software/cell-ranger-arc/latest/analysis/inputs/mkref

## Run cellranger mkref
- sbatch cellranger_mkref_job.sh

## Run cellranger-atac mkref
- sbatch cellranger_mkref_job.sh
