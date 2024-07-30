#!/bin/bash

# Activate the conda environment
source ~/miniconda3/etc/profile.d/conda.sh  # Adjust the path to conda.sh if necessary
conda activate RTG-SLAM

# Set environment variables
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:"/workspace/RTG-SLAM/thirdParty/install/lib/"
export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libffi.so.7

# Check if importing orbslam2 in Python raises an error
python -c "
try:
    import orbslam2
    print('orbslam2 imported successfully')
except ImportError as e:
    print(f'Failed to import orbslam2: {e}')
"
