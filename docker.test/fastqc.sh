#!/bin/bash
# activate conda environment
source activate genx

mkdir -p mkdir -p /data_out/fastqc/
START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Sequence QC analysis $TIME_STAMP"
SECONDS=0

fastqc /data_out/sickle/P7741_R1.fastq.gz /data_out/sickle/P7741_R2.fastq.gz -t 2 -o /data_out/fastqc/
# aws s3 cp /data_out/fastqc/ s3://genx-poc/data-out/fastqc/ --recursive

duration=$SECONDS
fastqc_out=$(cat << _EOF_
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
_EOF_

echo $fastqc_out

echo "fastqc folder content"
ls -lha /data_out/fastqc/
