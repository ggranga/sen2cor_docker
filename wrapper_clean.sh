#!/bin/bash

source /root/sen2cor/L2A_Bashrc

#set -x

# Get input variables
unzipped_dir=/var/sentinel2_data/unzipped_scenes/"$1"

# Delete the unzipped file after running sen2cor
rm -r $unzipped_dir
rm -r `echo $unzipped_dir | sed 's/MSIL1C/MSIL2A/g;s/OPER/USER/g'`
