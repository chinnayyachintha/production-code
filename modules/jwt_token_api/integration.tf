# Integration for JWTtoken_get method
resource "aws_api_gateway_integration" "JWTtokenGenerator_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.jwt_token.id
  resource_id             = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method             = aws_api_gateway_method.JWTtokenGenerator_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.JWTtoken_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
      "sub": "$input.params('sub')",
      "name": "$input.params('name')",
      "admin": "$input.params('admin')"
  }
   EOF
  }
}

# Integration for JWTtokenGenerator method
resource "aws_api_gateway_integration" "JWTtokenGenerator_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.jwt_token.id
  resource_id             = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method             = aws_api_gateway_method.JWTtokenGenerator_post.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.JWTtoken_invoke_arn
}