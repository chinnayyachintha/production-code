# function.tf variables

variable "timeout" {
  type        = number
  description = "Lambda function timeout in seconds"
}

variable "memory_size" {
  type        = number
  description = "Lambda function memory size in MB"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to Lambda functions"
}

variable "iam_role_arn" {
  type        = string
  description = "IAM Role ARN for Lambda execution"
}

variable "environment" {
  type        = string
  description = "Environment for the deployment"
}

# layers.tf
variable "jwt_token_execution_arn" { }

variable "website_dev_execution_arn" { }