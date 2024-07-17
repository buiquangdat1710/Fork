#!/bin/bash

# Activate conda environment
source ~/anaconda3/etc/profile.d/conda.sh
conda activate agent

# Start pm2 process and save logs
echo "Training the model"
pm2 start train.py --name train-model --log-date-format "YYYY-MM-DD HH:mm Z" --output logs/train-out.log --error logs/train-error.log

# Optionally, you can use pm2 to manage your logs
pm2 logs train-model
