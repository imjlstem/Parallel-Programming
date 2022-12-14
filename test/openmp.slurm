#!/bin/bash
#
#SBATCH --job-name=openmp_test
#SBATCH --output=openmp_result.txt
#
#SBATCH --partition=nu-wide
#SBATCH --ntasks=1
#SBATCH --time=24:00:00

#compile example C code (http://en.wikipedia.org/wiki/Openmp#C)
gcc -fopenmp wiki_mpi_example.c -o hello.mpi

#run the code
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
./hello.omp



 


