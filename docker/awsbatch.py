# -*- coding: utf-8 -*-
import os
#import boto3
path = "poc_folder"
if not os.path.exists(path):
    os.makedirs(path)
f = open("poc_folder/demofile2.txt", "a")
f.write("Now the file has more content!")
f.close()

#open and read the file after the appending:
f = open("poc_folder/demofile2.txt", "r")
import os
os.system('cp poc_folder/demofile2.txt poc_folder/demofile2bk.txt')
os.system('ls -lha')
os.system('pwd')
#os.system('aws s3 cp "/demofile2.txt" s3://poc-bucket-genx/sickle/')
print(f.read())