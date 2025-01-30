resource "aws_cloudwatch_log_group" "api_gateway_logs" {
  name              = var.log_group_name
  retention_in_days = 14

  lifecycle {
    ignore_changes = [name]
    create_before_destroy = true  # Optional, to ensure it’s created before destroying if needed
  }
}

resource "aws_api_gateway_account" "dev_account" {
  cloudwatch_role_arn = var.iam_role_arn
}