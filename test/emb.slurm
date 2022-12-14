#Embarrassingly Parallel Problem

#!/bin/bash
#
#SBATCH --job-name=emb_test
#SBATCH --output=emb_result.txt
#
#SBATCH --partition=nu-wide
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#
#SBATCH --array=1-8 #8 time - range from 1 to 8

srun ./my_program $SLURM_ARRAY_TASK_ID





 


