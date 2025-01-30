variable "log_group_name" {
  type        = string
  description = "Name of the CloudWatch log group"
}

variable "iam_role_arn" {
  type        = string
  description = "IAM Role ARN for CloudWatch logging"
}

