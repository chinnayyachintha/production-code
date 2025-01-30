output "execution_arn" {
  value       = aws_api_gateway_rest_api.jwt_token.execution_arn
  description = "The output of website execution arn"
}

output "api_endpoints" {
  value = {
    for key, stage in aws_api_gateway_stage.jwt_token_stage : key => "https://${aws_api_gateway_rest_api.jwt_token.id}.execute-api.${var.aws_region}.amazonaws.com/${stage.stage_name}"
  }
}



