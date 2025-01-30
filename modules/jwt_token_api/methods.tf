resource "aws_api_gateway_method" "JWTtokenGenerator_get" {
  rest_api_id   = aws_api_gateway_rest_api.jwt_token.id
  resource_id   = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method   = "GET"
  authorization = "NONE"

  request_parameters = {
    "method.request.querystring.name"  = false,
    "method.request.querystring.sub"   = false,
    "method.request.querystring.admin" = false
  }
}

resource "aws_api_gateway_method" "JWTtokenGenerator_post" {
  rest_api_id   = aws_api_gateway_rest_api.jwt_token.id
  resource_id   = aws_api_gateway_resource.JWTtokenGenerator.id
  http_method   = "POST"
  authorization = "NONE"


  request_parameters = {
    "method.request.querystring.name"  = false,
    "method.request.querystring.sub"   = false,
    "method.request.querystring.admin" = false
  }
}