output "iam_role_arn" {
  description = "The ARN of the combined IAM role"
  value       = aws_iam_role.common_role.arn
}
