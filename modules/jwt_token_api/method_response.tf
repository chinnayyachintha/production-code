# method response for JWTtoken_get
resource "aws_api_gateway_method_response" "JWTtokenGenerator_get_response" {
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
  resource_id = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method = aws_api_gateway_method.JWTtokenGenerator_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}


# method response JWTtokenGenerator
resource "aws_api_gateway_method_response" "JWTtokenGenerator_post_response" {
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
  resource_id = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method = aws_api_gateway_method.JWTtokenGenerator_post.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}