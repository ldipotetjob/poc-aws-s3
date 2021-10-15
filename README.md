## README ##

This repository is a proof of concept about the implementation of some bioinformatic tools in docker.

### Setting up ###
- AWS
- Docker
    - **docker build -t image_name:tag .**
    - **docker  run --name container_name --rm -ti image_name:tag tool_to_execute**
- BioInformatic tools scripts
./src/spades.sh 
./src/sickle.sh 
./src/fastqc.sh

### Calling tools(tool_to_execute) ###

(tag:**test**) two choices 

1. sickle: ./src/sickle.sh /data/P7741_R1.fastq.gz /data/P7741_R2.fastq.gz
2. sickle + spades + fasqc: ./src/executor.sh

### example ###

1. $ docker run --name genx --rm scadip/aws-batch-poc:test ./src/sickle.sh /data/P7741_R1.fastq.gz /data/P7741_R2.fastq.gz
2. $ docker run --name genx --rm scadip/aws-batch-poc:test ./src/executor.sh

### Contact us ###
[Scadip](https://scadip.com)  


ref.: [install jupyter notebook on docker linux:](https://tcoil.info/build-custom-miniconda-docker-image-with-dockerfile/)
