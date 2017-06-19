#!/bin/bash

source /root/sen2cor/L2A_Bashrc

#set -x

# Get input variables
zipped_dir=/var/sentinel2_data/archives/"$1"
unzipped_dir=/var/sentinel2_data/unzipped_scenes/"${1%.zip}"

# Delete the unzipped file after running sen2cor
rm -r $unzipped_dir
rm -r ${unzipped_dir//MSIL1C/MSIL2A}