#!/bin/bash
#SBATCH --job-name=train
#SBATCH --partition=earth-4
#SBATCH --time=00-00:05:00



#!/bin/bash
#SBATCH --job-name=leod-train
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=04:00:00  # Adjust the time limit as needed
#SBATCH --partition=earth-4
#SBATCH --gres=gpu:1  # Request 1 GPU

# Load required modules
module load gcc/9.4.0-pe5.34
module load cuda/11.6.2

# Activate your environment
micromamba activate /cfs/earth/scratch/cacc/micromamba/envs/leod

# Run the training script
python /cfs/earth/scratch/cacc/Code/train.py > train_output.log 2>&1
