airflow connections add aws_credentials --conn-uri 'aws://***'

airflow connections add redshift --conn-uri 'redshift:***'

airflow variables set s3_bucket hema-airflow

airflow variables set s3_prefix data-pipelines
