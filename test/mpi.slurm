#!/bin/bash
#
#SBATCH --job-name=mpi_test
#SBATCH --output=mpi_result.txt
#
#SBATCH --partition=nu-wide
#SBATCH --ntasks=1
#SBATCH --time=24:00:00

module load gcc/11.1.0
module load openmpi/4.0.5

#compile the C program
mpicc wiki_mpi_example.c -o hello.mpi

#launch the MPI program
srun hello.mpi




 


