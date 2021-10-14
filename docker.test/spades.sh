#!/bin/bash
# This is our first script. 
source activate genx
# remove, it's just for test 
# create out_folder
mkdir -p data_out/spades

START_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated at $START_TIME"
TITLE="Spades tooling process $TIME_STAMP"
SECONDS=0
spades.py --careful -o /data_out/spades -1 /data_out/sickle//P7741_R1.fastq.gz -2 /data_out/sickle/P7741_R2.fastq.gz -s /data_out/sickle/trimmed_singles_file.fastq.gz

duration=$SECONDS
spades_out=$(cat << _EOF_
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
echo $spades_out

echo "sickle folder content"
ls -lha /data_out/sickle/
echo "fastqc folder content"
ls -lha /data_out/fastqc/
echo "spades folder content"
ls -lha /data_out/spades