#!/bin/bash

echo 'running sickle tool'
source activate genx
# basename get filename without the full path
fastq_forward=$1
forward_filename_only=$(basename $1)
# paired-end reverse fastq file(file_name.fastq.gz)
fastq_reverse=$2
reverse_filename_only=$(basename $2)

# TODO remove, it's just for test
mkdir -p /data_out/sickle/
# paired-end forward fastq file(file_name.fastq.gz)
source /src/download_data.sh

START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Sickle tooling process  $TIME_STAMP"
SECONDS=0
# TODO change to proper value -q, --qual-threshold, Threshold for trimming based on average quality in a window. Default 20.
# TODO change to proper value -l, --length-threshold, Threshold to keep a read based on length after trimming. Default 20.
# forward:$fastq_forward reverse:$fastq_reverse
sickle pe -g -f $fastq_forward -r $fastq_reverse -t sanger \
        -o /data_out/sickle/$forward_filename_only \
        -p /data_out/sickle/$reverse_filename_only \
        -s /data_out/sickle/trimmed_singles_file.fastq.gz -q 20 -l 20

# aws s3 cp data_out/sickle/ s3://s3_path --recursive

duration=$SECONDS
sickle_out=$(cat << _EOF_
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
echo $sickle_out   

echo "sickle folder content"
ls -lha /data_out/sickle/