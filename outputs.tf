output "website_dev_api_gateway_url" {
  value = module.website_dev_api.api_endpoints
}

output "jwt_token_api_gateway_url" {
  value = module.jwt_token_api.api_endpoints
}
