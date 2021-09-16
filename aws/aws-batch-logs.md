aws command 2 execute an specific job if compute environments/job queue/job definitions are regitered/created: 

```shell
aws batch submit-job --job-name aws-batch-demo --job-queue arn-job-queue-value  --job-definition arn-job-definition-value
```

#### get all aws logs stream
**the first is the newest**

```shell
<<'###BLOCK-COMMENT'
{
    "logStreams": [
        {
            "logStreamName": "aws-batch-3/default/74c7e80f340d4517b4b618cc638beb45",
            "creationTime": 1631628226406,
            "firstEventTimestamp": 1631628226795,
            "lastEventTimestamp": 1631628227523,
            "lastIngestionTime": 1631628227616,
            "uploadSequenceToken": "49610854259171083793854868645467631593055435947289608818",
            "arn": "arn:aws:logs:eu-west-1:615181064658:log-group:/aws/batch/job:log-stream:aws-batch-3/default/74c7e80f340d4517b4b618cc638beb45",
            "storedBytes": 0
        },
        {
            "logStreamName": "aws-batch-3/default/9273aab167f34a9f89cba20fc711dc95",
            "creationTime": 1631554774642,
            "firstEventTimestamp": 1631554775019,
            "lastEventTimestamp": 1631554775767,
            "lastIngestionTime": 1631554775860,
            "uploadSequenceToken": "49619916754897052381413913737866025523867603200018219554",
            "arn": "arn:aws:logs:eu-west-1:615181064658:log-group:/aws/batch/job:log-stream:aws-batch-3/default/9273aab167f34a9f89cba20fc711dc95",
            "storedBytes": 0
        },......
###BLOCK-COMMENT
aws logs describe-log-streams --log-group-name /aws/batch/job
```

#### get an specific log stream

```shell
<<'###BLOCK-COMMENT'
    "logStreams": [
        {
            "logStreamName": "aws-batch-demo1/default/729731b782bc42eca8cbbc09e36982f0",
            "creationTime": 1631551670961,
            "firstEventTimestamp": 1631551671385,
            "lastEventTimestamp": 1631551672053,
            "lastIngestionTime": 1631551672138,
            "uploadSequenceToken": "49619050229157951494447131296828265163996085530639992258",
            "arn": "arn:aws:logs:eu-west-1:615181064658:log-group:/aws/batch/job:log-stream:aws-batch-demo1/default/729731b782bc42eca8cbbc09e36982f0",
            "storedBytes": 0
        }
    ]
###BLOCK-COMMENT

aws logs describe-log-streams --log-group-name /aws/batch/job --log-stream-name-prefix aws-batch-3/default/74c7e80f340d4517b4b618cc638beb45
```

#### get an specific log event

```shell
<<'###BLOCK-COMMENT'
{
    "events": [
        {
            "timestamp": 1631551671385,
            "message": "total 68K",
            "ingestionTime": 1631551672138
        },
        .......
        {
            "timestamp": 1631551671385,
            "message": "drwxr-xr-x   1 root root 4.0K Aug 24 19:04 var",
            "ingestionTime": 1631551672138
        },
        {
            "timestamp": 1631551671386,
            "message": "/",
            "ingestionTime": 1631551672138
        },
        {
            "timestamp": 1631551671964,
            "message": "upload failed: poc_folder/demofile2bk.txt to s3://poc-bucket-genx/sickle/demofile2bk.txt An error occurred (AccessDenied) when calling the PutObject operation: Access Denied",
            "ingestionTime": 1631551672138
        },
        {
            "timestamp": 1631551671966,
            "message": "upload failed: poc_folder/demofile2.txt to s3://poc-bucket-genx/sickle/demofile2.txt An error occurred (AccessDenied) when calling the PutObject operation: Access Denied",
            "ingestionTime": 1631551672138
        },
        {
            "timestamp": 1631551672053,
            "message": "Completed 30 Bytes/60 Bytes (0 Bytes/s) with 1 file(s) remaining\rNow the file has more content!",
            "ingestionTime": 1631551672138
        }
    ],
    "nextForwardToken": "f/36384818116690549627269041764445207655710599286989651997/s",
    "nextBackwardToken": "b/36384818101793651834650585505899347849581493800994734080/s"
###BLOCK-COMMENT

aws logs get-log-events --log-group-name /aws/batch/job --log-stream-name aws-batch-demo1/default/729731b782bc42eca8cbbc09e36982f0
``

ref: https://docs.aws.amazon.com/cli/latest/reference/logs/ \
     https://docs.aws.amazon.com/cli/latest/reference/batch/ \





