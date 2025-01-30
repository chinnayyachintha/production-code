# Define the API Gateway for Token
resource "aws_api_gateway_rest_api" "jwt_token" {
  name        = "JWT-Token-${var.environment}-API"
  description = "JWT-Token-${var.environment}-API"
  
  endpoint_configuration {
    types = ["REGIONAL"]
  }
  
}