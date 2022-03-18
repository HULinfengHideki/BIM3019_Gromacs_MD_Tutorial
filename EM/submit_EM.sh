#!/bin/bash
#SBATCH --job-name EM
#SBATCH --partition kobilka-gpu
#SBATCH --nodes 1
#SBATCH --gpus-per-node 1
#SBATCH --ntasks-per-node 1
#SBATCH --cpus-per-task 16
#SBATCH --export NONE

module load gromacs/2021.2-gcc8-cuda

gmx mdrun -v -deffnm em -ntmpi 4 -ntomp 4

