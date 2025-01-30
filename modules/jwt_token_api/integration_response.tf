# integration response JWTtoken_get
resource "aws_api_gateway_integration_response" "JWTtokenGenerator_get_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
  resource_id = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method = aws_api_gateway_method.JWTtokenGenerator_get.http_method
  status_code = aws_api_gateway_method_response.JWTtokenGenerator_get_response.status_code

  response_templates = {
    "application/json" = ""
  }
  
  depends_on = [
    aws_api_gateway_method.JWTtokenGenerator_get,
    aws_api_gateway_integration.JWTtokenGenerator_get_integration
  ]

}

# integration response JWTtokenGenerator
resource "aws_api_gateway_integration_response" "JWTtokenGenerator_post_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
  resource_id = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method = aws_api_gateway_method.JWTtokenGenerator_post.http_method
  status_code = aws_api_gateway_method_response.JWTtokenGenerator_post_response.status_code

  response_templates = {
    "application/json" = ""
  }

  depends_on = [
    aws_api_gateway_method.JWTtokenGenerator_post,
    aws_api_gateway_integration.JWTtokenGenerator_post_integration
  ]

}