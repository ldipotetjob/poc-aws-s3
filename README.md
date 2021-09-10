# poc-aws-s3

## build & run docker image 

### docker image:
```shell
cd docker 
docker build -t scadip/aws-batch-poc .
```

### run a command in the container:
```shell
docker run --name genx \
  --rm \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
  -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
  scadip/aws-batch-poc
```
