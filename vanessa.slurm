#!/bin/bash
#SBATCH --job-name=pi_threads
#SBATCH --output=vanessa-result.txt
#SBATCH --partition=nu-wide
#SBATCH --ntasks=1
#SBATCH --time=24:00:00


module load anaconda2/4.2.0
module load quast/4.6.0

quast.py -R GCF_905220365.1_ilVanCard2.1_genomic.fna --glimmer --output-dir test_quast ../../hifi_ecoli.p_ctg.fa ../../ecoli-canu/ecoli.correctedReads.fasta ../../ecoli_hiseq_spades/scaffolds.fasta



