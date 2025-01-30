# AWS Region where resources will be deployed
aws_region = "ca-central-1"

# environment for the deployment
environment = "prod"

# stages
stages = ["prod"]

# s3 bucket name
terraform_state_bucket_name = "ihw-terraform-state-buk"

# dynamodb table name
dynamodb_table_name = "ihw-terraform-state-locks"

####cloud_watch module variables values #######
log_group_name = "/prod/aws/api_gateway/"

####iam_role_name module variables values #######
iam_role_name = "api-s-lambda-prod-role"

####lambda module variables #######
timeout = 300

memory_size = 512

tags = {
  Environment = "prod"
  Project     = "IHW"
  Name        = "anudeep"
}

# parameter store values

flairgate_apiuser     = "APIGATE"
flairgate_apipassword = "anudeep123$"
jwt_token             = "e02dc24260a20e5f3864debf5d768a75e5bb94a3fe43f3490df1776fb8cf9be2"