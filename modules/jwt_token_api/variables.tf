# rest_api.tf
variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, prod)"
}

# outputs.tf
variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
}

# integration.tf
variable "JWTtoken_invoke_arn" {
  type        = string
  description = "Invoke ARN of the JWTtoken Lambda function"
}


# deployment.tf
variable "cloud_watch_arn" { }

# Define stages as a variable for flexibility
variable "stages" {
  type        = list(string)
  description = "Stages to deploy to"
}

variable "destination_arn" {}