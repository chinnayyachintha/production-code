output "JWTtoken_invoke_arn" {
  value       = aws_lambda_function.JWTtoken.invoke_arn
  description = "The ARN for the JWT token Lambda function invoke"
}

output "LamdaAuthorizer_invoke_arn" {
  value       = aws_lambda_function.LamdaAuthorizer.invoke_arn
  description = "The ARN for the Lambda Authorizer function invoke"
}

output "accessibility_request_invoke_arn" {
  value       = aws_lambda_function.accessibility_request.invoke_arn
  description = "The ARN for the accessibility_request function invoke"
}

output "search_ancillary_invoke_arn" {
  value       = aws_lambda_function.search_ancillary.invoke_arn
  description = "The ARN for the search_ancillary function invoke"
}

output "baggage_invoke_arn" {
  value       = aws_lambda_function.baggage.invoke_arn
  description = "The ARN for the baggage Lambda function invoke"
}

output "create_reservation_invoke_arn" {
  value       = aws_lambda_function.create_reservation.invoke_arn
  description = "The ARN for the create_reservation Lambda function invoke"
}

output "flight_select_invoke_arn" {
  value       = aws_lambda_function.flight_select.invoke_arn
  description = "The ARN for the flight_select Lambda function invoke"
}

output "lowfare_options_invoke_arn" {
  value       = aws_lambda_function.lowfare_options.invoke_arn
  description = "The ARN for the lowfare_options Lambda function invoke"
}

output "payment_methods_invoke_arn" {
  value       = aws_lambda_function.payment_methods.invoke_arn
  description = "The ARN for the payment_methods Lambda function invoke"
}

output "payment_reservation_invoke_arn" {
  value       = aws_lambda_function.payment_reservation.invoke_arn
  description = "The ARN for the payment_reservation Lambda function invoke"
}

output "seat_selection_invoke_arn" {
  value       = aws_lambda_function.seat_selection.invoke_arn
  description = "The ARN for the seat_selection Lambda function invoke"
}


output "flight_search_invoke_arn" {
  value       = aws_lambda_function.flight_search.invoke_arn
  description = "The ARN for the flight_search Lambda function invoke"
}

output "calenderRates_invoke_arn" {
  value       = aws_lambda_function.calenderRates.invoke_arn
  description = "The ARN for the calenderRates Lambda function invoke"
}
output "brbpurchaseservice_invoke_arn" {
  value = aws_lambda_function.brbpurchaseservice.invoke_arn
  description = "The ARN for the brbpurchaseservice Lambda function invoke"
}

output "klaviyoevent_invoke_arn" {
  value = aws_lambda_function.klaviyoevent.invoke_arn
  description = "The ARN for the klaviyoevent Lambda function invoke"
}