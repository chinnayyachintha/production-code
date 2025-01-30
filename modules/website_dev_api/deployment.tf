################ website_dev REST API Deployment ################

# Create API Gateway deployment with updated integration dependencies
resource "aws_api_gateway_deployment" "website_dev" {
  depends_on = [
    aws_api_gateway_integration.accessibility_request_get_integration,
    aws_api_gateway_integration.baggage_get_integration,
    aws_api_gateway_integration.create_reservation_post_integration,
    aws_api_gateway_integration.flight_select_get_integration,
    aws_api_gateway_integration.search_ancillary_get_integration,
    aws_api_gateway_integration.lowfare_options_get_integration,
    aws_api_gateway_integration.payment_methods_get_integration,
    aws_api_gateway_integration.payment_reservation_post_integration,
    aws_api_gateway_integration.seat_selection_get_integration,
    aws_api_gateway_integration.flight_search_get_integration,
    aws_api_gateway_integration.calenderRates_get_integration,
    aws_api_gateway_integration.temp_get_integration,
  ]
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
}

# Create multiple stages for website_dev
resource "aws_api_gateway_stage" "website_dev_stage" {
  for_each      = toset(var.stages)
  rest_api_id   = aws_api_gateway_rest_api.website_dev.id
  stage_name    = each.value
  deployment_id = aws_api_gateway_deployment.website_dev.id

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

