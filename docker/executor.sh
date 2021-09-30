#!/bin/bash
source ./src/download_data.sh
source ./src/sickle.sh /data/P7741_R1.fastq.gz /data/P7741_R2.fastq.gz
ls /trimmed_reads/ -lha