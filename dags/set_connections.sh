#!/bin/bash
#
# TO-DO: run the follwing command and observe the JSON output: 
# airflow connections get aws_credentials -o json 
# 
#[{"id": "68", 
# "conn_id": "aws_credentials",
# "conn_type": "aws", 
# "description": "Connecting AWS to airflow for exercise", 
# "host": "", 
# "schema": "", 
# "login": "AKIA44PEB63UNNJKK2UC", 
# "password": "ChtRiS0QyrW/I144Qwtb5SYhGHpBXtYyF4vkvRcQ", 
# "port": null, 
# "is_encrypted": "True", 
# "is_extra_encrypted": "True", 
# "extra_dejson": {}, 
# "get_uri": "aws://AKIA44PEB63UNNJKK2UC:ChtRiS0QyrW%2FI144Qwtb5SYhGHpBXtYyF4vkvRcQ@"
#}]
#
# Copy the value after "get_uri":
#
# For example: aws://AKIA4QE4NTH3R7EBEANN:s73eJIJRbnqRtll0%2FYKxyVYgrDWXfoRpJCDkcG2m@
#
# TO-DO: Update the following command with the URI and un-comment it:
#
# airflow connections add aws_credentials --conn-uri 'aws://AKIA44PEB63UNNJKK2UC:ChtRiS0QyrW%2FI144Qwtb5SYhGHpBXtYyF4vkvRcQ@'
# TO-DO: run the follwing command and observe the JSON output: 
# airflow connections get aws_project_credentials -o json 
# 
#[{"id": "69", 
# "conn_id": "aws_project_credentials",
# "conn_type": "aws", 
# "description": "Connecting AWS to airflow for exercise", 
# "host": "", 
# "schema": "", 
# "login": "AKIA44PEB63UFPDNUTSY", 
# "password": "g0uYF/lYmd5lp/8EaJ3GQ0uU9elrn60PFz2tfRtK", 
# "port": null, 
# "is_encrypted": "True", 
# "is_extra_encrypted": "True", 
# "extra_dejson": {}, 
# "get_uri": "aws://AKIA44PEB63UFPDNUTSY:g0uYF%2FlYmd5lp%2F8EaJ3GQ0uU9elrn60PFz2tfRtK@"
#}]
#
# Copy the value after "get_uri":
#
# For example: aws://AKIA4QE4NTH3R7EBEANN:s73eJIJRbnqRtll0%2FYKxyVYgrDWXfoRpJCDkcG2m@
#
# TO-DO: Update the following command with the URI and un-comment it:
#
airflow connections add aws_credentials --conn-uri 'aws://AKIA44PEB63UFPDNUTSY:g0uYF%2FlYmd5lp%2F8EaJ3GQ0uU9elrn60PFz2tfRtK@'
#
# TO-DO: run the follwing command and observe the JSON output: 
# airflow connections get redshift -o json
# 
# [{"id": "70", 
# "conn_id": "redshift_project", 
# "conn_type": "redshift", 
# "description": "", 
# "host": "project-airflow.885778413288.us-east-1.redshift-serverless.amazonaws.com", 
# "schema": "dev", 
# "login": "projectuser", 
# "password": "Hm33481968", 
# "port": "5439", 
# "is_encrypted": "True", 
# "is_extra_encrypted": "True", 
# "extra_dejson": {}, 
# "get_uri": "redshift://awsuser:Hm33481968@default-workgroup.885778413288.us-east-1.redshift-serverless.amazonaws.com:5439/dev"}]
#
# Copy the value after "get_uri":
#
# For example: redshift://projectuser:Hm33481968@project-airflow.885778413288.us-east-1.redshift-serverless.amazonaws.com:5439/dev
#
# TO-DO: Update the following command with the URI and un-comment it:
#
airflow connections add redshift --conn-uri 'redshift://projectuser:Hm33481968@project-airflow.885778413288.us-east-1.redshift-serverless.amazonaws.com:5439/dev'
# TO-DO: run the follwing command and observe the JSON output: 
# airflow connections get redshift -o json
# 
# [{"id": "68", 
# "conn_id": "redshift", 
# "conn_type": "redshift", 
# "description": "", 
# "host": "default-workgroup.885778413288.us-east-1.redshift-serverless.amazonaws.com", 
# "schema": "dev", 
# "login": "awsuser", 
# "password": "Hm33481968", 
# "port": "5439", 
# "is_encrypted": "True", 
# "is_extra_encrypted": "True", 
# "extra_dejson": {}, 
# "get_uri": "redshift://awsuser:Hm33481968@default-workgroup.885778413288.us-east-1.redshift-serverless.amazonaws.com:5439/dev"}]
#
# Copy the value after "get_uri":
#
# For example: redshift://awsuser:R3dsh1ft@default.859321506295.us-east-1.redshift-serverless.amazonaws.com:5439/dev
#
# TO-DO: Update the following command with the URI and un-comment it:
#
# airflow connections add redshift --conn-uri 'redshift://awsuser:Hm33481968@default-workgroup.885778413288.us-east-1.redshift-serverless.amazonaws.com:5439/dev'
# TO-DO: update the following bucket name to match the name of your S3 bucket and un-comment it:
#
airflow variables set s3_bucket hema-airflow
#
# TO-DO: un-comment the below line:
#
airflow variables set s3_prefix data-pipelines