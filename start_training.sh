#!/bin/bash

project_root_dir=/project/train/src_repo
dataset_dir=/home/data
log_file=/project/train/log/log.txt

cd ${project_root_dir} \
&& echo "Generating path files" \
&& python3 -u models/ssd/datasets/generate_data_path.py | tee -a ${log_file} \
&& echo "Training" \
&& python3 -u train.py | tee -a ${log_file}