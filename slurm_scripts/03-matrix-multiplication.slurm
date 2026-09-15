#!/bin/bash
#SBATCH --job-name=03-matmul
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G
#SBATCH --time=00:05:00
#SBATCH --output=/home/bapic_iiitd/ta-directory/triton-tut/logs/03-matrix-multiplication.log
#SBATCH --error=/home/bapic_iiitd/ta-directory/triton-tut/logs/03-matrix-multiplication.err

# Activate virtual environment
source /home/bapic_iiitd/ta-directory/triton-tut/.venv/bin/activate

# Configure environment
export MPLBACKEND=Agg
export PYTHONUNBUFFERED=1

# Run Python script
python /home/bapic_iiitd/ta-directory/triton-tut/tutorials_python/03-matrix-multiplication.py
