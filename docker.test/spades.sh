#!/bin/bash
# This is our first script. 
source activate genx
# remove, it's just for test 
# create out_folder
mkdir -p data_out/spades
source /src/download_data.sh s3://genx-poc/data-out/sickle/ "--include *.gz"

START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Spades tooling process $TIME_STAMP"
SECONDS=0
spades.py --careful -o /data_out/spades -1 /data/P7741_R1.fastq.gz -2 /data/P7741_R2.fastq.gz -s /data/trimmed_singles_file.fastq.gz
aws s3 cp /data_out/spades/ s3://genx-poc/data-out/spades/ --recursive

duration=$SECONDS
cat << _EOF_
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