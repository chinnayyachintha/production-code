# AWS Region where resources will be deployed
variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
}

# environment for the deployment
variable "environment" {
  type        = string
  description = "Environment for the deployment"
}

# Define stages as a variable for flexibility
variable "stages" {
  type        = list(string)
  description = "Stages to deploy to"
}

####cloud_watch module variables #######

variable "log_group_name" {
  type        = string
  description = "Name of the aws_cloudwatch_log_group"
}

####iam_role_name module variables #######

variable "iam_role_name" {
  type        = string
  description = "Name of the IAM role"
}

#########dynamodb moudule variables #########

variable "dynamodb_table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}

##########s3 bucket module variables #########

variable "terraform_state_bucket_name" {
  type        = string
  description = "Name of the S3 bucket to store Terraform state"
}

####lambda module variables #######

variable "timeout" {
  type = string
}

variable "memory_size" {
  type = string
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
}

# ssm_parameter_store.tf variables

variable "flairgate_apiuser" {
  type = string
}

variable "flairgate_apipassword" {
  type = string
}

variable "jwt_token" {
  type = string
}
