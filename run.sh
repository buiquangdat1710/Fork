#!/bin/bash

# Activate conda environment
source ~/anaconda3/etc/profile.d/conda.sh
conda activate agent

# Start pm2 process and save logs
echo "Training the model"

python train.py

git commit -m "Update log file"
git push origin main
