#!/bin/bash

source /root/sen2cor/L2A_Bashrc

#set -x

# Get input variables
unzipped_dir=/var/sentinel2_data/unzipped_scenes/"$1"

# Get the oupout resolution, if no resolution is set set the output resolution to 60
outresolution="$2"

# Run sen2cor
L2A_Process $unzipped_dir --resolution=$outresolution

# Delete the unzipped file after running sen2cor
#rm -r $unzipped_dir

