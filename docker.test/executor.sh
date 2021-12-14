#!/bin/bash
source ./src/sickle.sh /data/xxxx_1.fastq.gz /data/xxxx_2.fastq.gz
source ./src/fastqc.sh
source ./src/spades.sh

echo "sickle folder content"
ls -lha /data_out/sickle/
echo "fastqc folder content"
ls -lha /data_out/fastqc/
echo "spades folder content"
ls -lha /data_out/spades
