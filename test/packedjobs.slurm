#!/bin/bash
#
#SBATCH --job-name=packed_test
#SBATCH --output=packed_result.txt
#
#SBATCH --partition=nu-wide
#SBATCH --ntasks=8
#SBATCH --time=24:00:00

for i in {1...1000}
do
        srun -n1 --exclusive ./my_program $i &
done
wait




 


