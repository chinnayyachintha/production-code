################ JWTtoken REST API Deployment ################

# Create API Gateway deployment with updated integration dependencies for JWTtoken
resource "aws_api_gateway_deployment" "jwt_token" {
  depends_on = [
    aws_api_gateway_integration.JWTtokenGenerator_get_integration,
    aws_api_gateway_integration.JWTtokenGenerator_post_integration,
  ]
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
}

# Create multiple stages for JWTtoken
resource "aws_api_gateway_stage" "jwt_token_stage" {
  for_each      = toset(var.stages)
  rest_api_id   = aws_api_gateway_rest_api.jwt_token.id
  stage_name    = each.value
  deployment_id = aws_api_gateway_deployment.jwt_token.id

  # Add lifecycle settings to avoid recreation conflicts
  lifecycle {
    ignore_changes = [stage_name]
  }

  access_log_settings {
    destination_arn = var.destination_arn
    format = jsonencode({
      requestId      = "$context.requestId",
      ip             = "$context.identity.sourceIp",
      caller         = "$context.identity.caller",
      user           = "$context.identity.user",
      requestTime    = "$context.requestTime",
      httpMethod     = "$context.httpMethod",
      resourcePath   = "$context.resourcePath",
      status         = "$context.status",
      protocol       = "$context.protocol",
      responseLength = "$context.responseLength"
    })
  }
}