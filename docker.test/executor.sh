#!/bin/bash
source ./src/sickle.sh /data/P7741_R1.fastq.gz /data/P7741_R2.fastq.gz
source ./src/fastqc.sh
source ./src/spades.sh

echo "sickle folder content"
ls -lha /data_out/sickle/
echo "fastqc folder content"
ls -lha /data_out/fastqc/
echo "spades folder content"
ls -lha /data_out/spades