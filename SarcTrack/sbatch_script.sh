#!/bin/bash
#SBATCH -c 4
#SBATCH -N 1
#SBATCH -t 0-05:00
#SBATCH -p short
#SBATCH --mem=16GB
#SBATCH -o hostname_%j.out
#SBATCH -e hostname_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=christopher_toepfer@hms.harvard.edu
module load matlab/2018b
matlab -nosplash -nodesktop -r "dwO2ProcessVideo('$1'); exit"
