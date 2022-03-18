#!/bin/bash
#SBATCH --job-name Run
#SBATCH --partition kobilka-gpu
#SBATCH --nodes 1
#SBATCH --gpus-per-node 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 16
#SBATCH --export NONE

module load gromacs/2021.2-gcc8-cuda

gmx mdrun -v -deffnm md -pme gpu -npme 1 -ntmpi 4 -ntomp 4

