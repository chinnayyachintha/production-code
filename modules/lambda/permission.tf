# Allow API Gateway to invoke Lambda functions

resource "aws_lambda_permission" "JWTtokenGenerator_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-flight-select"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.JWTtoken.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.jwt_token_execution_arn}/*/*"
}

resource "aws_lambda_permission" "custom_authorizer_permission" {
  statement_id  = "AllowAPIGatewayAccess-custom_authorizer"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.LamdaAuthorizer.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "accessibility_request_permission" {
  statement_id  = "AllowAPIGatewayAccess-accessibility-request"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.accessibility_request.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "search_ancillary_permission" {
  statement_id  = "AllowAPIGatewayAccess-search-ancillary"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.search_ancillary.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "baggage_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-baggage"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.baggage.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "create_reservation_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-create-reservation"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.create_reservation.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "flight_select_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-flight-select"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.flight_select.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}


resource "aws_lambda_permission" "lowfare_options_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-lowfare-options"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lowfare_options.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "payment_methods_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-payment-methods"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.payment_methods.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "payment_reservation_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-payment-reservation"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.payment_reservation.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "seat_selection_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-seat-selection"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.seat_selection.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

# resource "aws_lambda_permission" "voucher_code_permission" {
#   statement_id  = "AllowAPIGatewayAccess-${var.environment}-voucher-code"
#   action        = "lambda:InvokeFunction"
#   function_name = aws_lambda_function.voucher_code.function_name
#   principal     = "apigateway.amazonaws.com"
#    source_arn    =  "${var.website_dev_execution_arn}/*/*"
# }

resource "aws_lambda_permission" "flight_search_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-flight-search"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.flight_search.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "calenderRates_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-calenderRates"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.calenderRates.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "temp_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-temp"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.search_ancillary.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "brbpurchaseservice_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-brbpurchaseservice"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.brbpurchaseservice.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}

resource "aws_lambda_permission" "klaviyoevent_permission" {
  statement_id  = "AllowAPIGatewayAccess-${var.environment}-klaviyoevent"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.klaviyoevent.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${var.website_dev_execution_arn}/*/*"
}