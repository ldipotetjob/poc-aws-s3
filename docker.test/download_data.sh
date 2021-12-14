#!/bin/bash
source activate genx

mkdir -p data

START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Downloading Data $TIME_STAMP"
SECONDS=0

# example value that can be assigned to wildcards_: --include "xxxx*.gz"
# Download data from AWS S3 bucket
# aws s3 cp $s3uri /data/ --recursive --exclude "*" $wildcards1 $wildcards2 $wildcards3

gdown -O /data/xxxx_2.fastq.gz https://drive.google.com/uc?id=1vtMN3ZncrhutYnY4Krp4Sui0KMW1r2-g
gdown -O /data/xxxx_1.fastq.gz https://drive.google.com/uc?id=18QKoE6Y89Y8DjEMw5Q108oYh-Lflv8kw


duration=$SECONDS
download_out=$(cat << _EOF_
<HTML>
        <HEAD>
                <TITLE>$TITLE</TITLE>
        </HEAD>
        <BODY>
           <H1>$TITLE</H1> 
           <P>$TIME_STAMP</P>
           $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed.
        </BODY>
</HTML>
_EOF_)
echo $download_out
