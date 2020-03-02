#!/bin/bash
old_bucket="new-test-sai"
new_bucket="new-test-sudheer"
file="test.txt.gz"
lines="10"
split_file="tt.txt"

mkdir split
aws s3 cp s3://$old_bucket/$file split/
new_file=`gunzip -r split/$file`
mkdir new_split
#split -l $lines $new_file  $split_file new_split
#gzip -r new_split/*
#aws s3 cp new_split/* s3://new_bucket/latest-split-files/
echo $new_file


