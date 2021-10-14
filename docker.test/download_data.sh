#!/bin/bash
source activate genx

mkdir -p data

START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Downloading Data $TIME_STAMP"
SECONDS=0

# example value that can be assigned to wildcards_: --include "P7741*.gz"
# Download data from AWS S3 bucket
# aws s3 cp $s3uri /data/ --recursive --exclude "*" $wildcards1 $wildcards2 $wildcards3

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR333/004/ERR3335404/ERR3335404_1.fastq.gz -O data/P7741_R1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR333/004/ERR3335404/ERR3335404_2.fastq.gz -O data/P7741_R2.fastq.gz

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