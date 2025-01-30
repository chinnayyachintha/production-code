# Create IAM Role
resource "aws_iam_role" "common_role" {
  name               = var.iam_role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  lifecycle {
    ignore_changes = [name]
    create_before_destroy = true  # Optional, to ensure it’s created before destroying if needed
  }

}

# IAM Policy Document for the Assume Role (API Gateway and Lambda)
data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = [
        "apigateway.amazonaws.com",
        "lambda.amazonaws.com"
      ]
    }
    actions = ["sts:AssumeRole"]
  }
}

# IAM Policy Document for CloudWatch Logs Access
data "aws_iam_policy_document" "cloudwatch_policy" {
  statement {
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams",
      "logs:PutLogEvents",
      "logs:GetLogEvents",
      "logs:FilterLogEvents"
    ]
    resources = ["*"]
  }
}

# Attach AWSLambdaBasicExecutionRole Policy
resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.common_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Attach CloudWatch Logs Policy to the IAM Role
resource "aws_iam_role_policy" "cloudwatch_policy" {
  name   = "custom_cloudwatch_policy"
  role   = aws_iam_role.common_role.id
  policy = data.aws_iam_policy_document.cloudwatch_policy.json
}
