resource "aws_api_gateway_resource" "JWTtokenGenerator" {
  rest_api_id = aws_api_gateway_rest_api.jwt_token.id
  parent_id   = aws_api_gateway_rest_api.jwt_token.root_resource_id
  path_part   = "tokenGenerator"
}