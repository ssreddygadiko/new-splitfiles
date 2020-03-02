#!/bin/bash

#Passing variables to split the files from s3 bucket

#echo "Enter bucket name:"

#read old_bucket

#echo "Enter which file need to split:"

#read file

#echo "Enter how many bytes [ex: 1GB= 100000000]:"

#read bytes

#echo "Enter bucket name where need to split the file:"

#read new_bucket

#echo "Enter the name to splited file:"

#read split_file

 

old_bucket="new-test-sai"

file="test.txt"
 
#bytes="10000"
lines="10"
new_bucket="new-test-sudheer"
split_file="test"
 
#Split the file from s3 bucket
aws s3  cp s3://$old_bucket/$file - | split -l $lines --filter 'aws s3 cp - s3://new-test-sudheer/new-split-test/result.test.$FILE.txt'
