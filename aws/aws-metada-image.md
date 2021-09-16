* sudo yum -y install which unzip aws-cli
* sudo yum -y install python-pip
* sudo yum install -y wget
* wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
* bash Miniconda3-latest-Linux-x86_64.sh -b
* PATH=/home/ec2-user/miniconda3/bin:${PATH}
* conda update -y conda
* conda list
* conda install -y numpy \
                     matplotlib \
                     pandas
* conda install -y jupyter notebook
* sudo mkdir notebooks
* jupyter notebook --ip 0.0.0.0 --no-browser --port 8888  --allow-root --notebook-dir=notebooks
