#!/bin/bash
# This is our first script. 
echo 'running sickle tool'
source activate bacterial-genomics-tutorial
# paired-end forward fastq file(file_name.fastq.gz)
fastq_forward=$1
forward_filename_only=$(basename $1)
# paired-end reverse fastq file(file_name.fastq.gz)
fastq_reverse=$2
reverse_filename_only=$(basename $2)

# remove, it's just for test 
mkdir -p trimmed_reads

# -q, --qual-threshold, Threshold for trimming based on average quality in a window. Default 20.
# -l, --length-threshold, Threshold to keep a read based on length after trimming. Default 20.
sickle pe -g -f $fastq_forward -r $fastq_reverse -t sanger -o /trimmed_reads/$forward_filename_only  \
        -p /trimmed_reads/$reverse_filename_only -s /trimmed_reads/trimmed_singles_file.fastq.gz -q 20 -l 20