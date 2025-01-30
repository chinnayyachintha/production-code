# Integration for accessibility_request_get method
resource "aws_api_gateway_integration" "accessibility_request_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.accessibility_request.id
  http_method             = aws_api_gateway_method.accessibility_request_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.accessibility_request_invoke_arn
}


# Integration for search_ancillary_get method
resource "aws_api_gateway_integration" "search_ancillary_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.search_ancillary.id
  http_method             = aws_api_gateway_method.search_ancillary_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.search_ancillary_invoke_arn
  request_templates = {
    "application/json" = <<EOF
    {
      "bookingKey": "$input.params('bookingKey')"
    }
    EOF
  }
  request_parameters = {
    "integration.request.querystring.bookingKey" = "method.request.querystring.bookingKey"
  }
}

# Integration for baggage_get method
resource "aws_api_gateway_integration" "baggage_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.baggage.id
  http_method             = aws_api_gateway_method.baggage_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.baggage_invoke_arn

  request_templates = {
    "application/json" = <<EOF
   {
     "passengerCounts": "$input.params('passengerCounts')",
     "currency": "$input.params('currency')",
     "departure": "$input.params('departure')",
     "cityPair": "$input.params('cityPair')"
   }
  EOF

  }
  request_parameters = {
    "integration.request.querystring.cityPair"        = "method.request.querystring.cityPair",
    "integration.request.querystring.departure"       = "method.request.querystring.cityPair",
    "integration.request.querystring.currency"        = "method.request.querystring.currency",
    "integration.request.querystring.passengerCounts" = "method.request.querystring.passengerCounts"
  }
}

# Integration for create_reservation_post method
resource "aws_api_gateway_integration" "create_reservation_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.create_reservation.id
  http_method             = aws_api_gateway_method.create_reservation_post.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.create_reservation_invoke_arn
}

# Integration for flight_select_get method
resource "aws_api_gateway_integration" "flight_select_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.flight_select.id
  http_method             = aws_api_gateway_method.flight_select_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.flight_select_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
     "departureDate": "$input.params('departureDate')",
     "cityPair": "$input.params('cityPair')",
     "passengerCount": "$input.params('passengerCount')"
  }
  EOF

  }
  request_parameters = {
    "integration.request.querystring.cityPair"       = "method.request.querystring.cityPair",
    "integration.request.querystring.departureDate"  = "method.request.querystring.departureDate",
    "integration.request.querystring.passengerCount" = "method.request.querystring.passengerCount"
  }
}


# Integration for  lowfare_options_get method
resource "aws_api_gateway_integration" "lowfare_options_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.lowfare_options.id
  http_method             = aws_api_gateway_method.lowfare_options_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.lowfare_options_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
     "passengerCount": "$input.params('passengerCount')",
     "daysAfterDeparture": "$input.params('daysAfterDeparture')",
     "departureDate": "$input.params('departureDate')",
     "cityPair": "$input.params('cityPair')"
  }
  EOF

  }
  request_parameters = {
    "integration.request.querystring.cityPair"           = "method.request.querystring.cityPair",
    "integration.request.querystring.daysAfterDeparture" = "method.request.querystring.daysAfterDeparture",
    "integration.request.querystring.departureDate"      = "method.request.querystring.departureDate",
    "integration.request.querystring.passengerCount"     = "method.request.querystring.passengerCount"
  }
}

# Integration for payment_methods_get method
resource "aws_api_gateway_integration" "payment_methods_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.payment_methods.id
  http_method             = aws_api_gateway_method.payment_methods_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.payment_methods_invoke_arn
}

# Integration for payment_reservation_post method
resource "aws_api_gateway_integration" "payment_reservation_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.payment_reservation.id
  http_method             = aws_api_gateway_method.payment_reservation_post.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.payment_reservation_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
     "body": $input.json('$'),
      "queryStringParameters": {
      #foreach($param in $input.params().querystring.keySet())
      "$param": "$util.escapeJavaScript($input.params().querystring.get($param))"
      #if($foreach.hasNext),#end
      #end
    }
  }
  EOF

  }
  request_parameters = {
    "integration.request.querystring.reservationKey" = "method.request.querystring.reservationKey",
  }
}

# Integration for seat_selection_get method
resource "aws_api_gateway_integration" "seat_selection_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.seat_selection.id
  http_method             = aws_api_gateway_method.seat_selection_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.seat_selection_invoke_arn

  request_templates = {
    "application/json" = <<EOF
    {
      "bookingKey": "$input.params('bookingKey')"
    }
    EOF
  }

  request_parameters = {
    "integration.request.querystring.bookingKey" = "method.request.querystring.bookingKey",
  }
}

# # Integration for voucher_code_get method
# resource "aws_api_gateway_integration" "voucher_code_get_integration" {
#   rest_api_id             = aws_api_gateway_rest_api.website_dev.id
#   resource_id             = aws_api_gateway_resource.voucher_code.id
#   http_method             = aws_api_gateway_method.voucher_code_get.http_method
#   integration_http_method = "POST"
#   type                    = "AWS"
#   uri                     = var.voucher_code.invoke_arn
# }

# Integration for flight_search_get method
resource "aws_api_gateway_integration" "flight_search_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.flight_search.id
  http_method             = aws_api_gateway_method.flight_search_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.flight_search_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
     "departureDate": "$input.params('departureDate')",
     "cityPair": "$input.params('cityPair')",
     "passengerCount": "$input.params('passengerCount')"
  }
  EOF

  }
  request_parameters = {
    "integration.request.querystring.cityPair"       = "method.request.querystring.cityPair",
    "integration.request.querystring.departureDate"  = "method.request.querystring.departureDate",
    "integration.request.querystring.passengerCount" = "method.request.querystring.passengerCount"
  }
}

# Integration for calenderRates_get method
resource "aws_api_gateway_integration" "calenderRates_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.calenderRates.id
  http_method             = aws_api_gateway_method.calenderRates_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.calenderRates_invoke_arn

  request_templates = {
    "application/json" = <<EOF
  {
     "departureDate": "$input.params('departureDate')",
     "cityPair": "$input.params('cityPair')"
  }
  EOF

  }
  request_parameters = {
    "integration.request.header.cityPair"           = "method.request.querystring.cityPair",
    "integration.request.querystring.departureDate" = "method.request.querystring.departureDate"
  }
}

# Integration for temp_get method
resource "aws_api_gateway_integration" "temp_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.temp.id
  http_method             = aws_api_gateway_method.temp_get.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.search_ancillary_invoke_arn

  request_templates = {
    "application/json" = <<EOF
    {
      "bookingKey": "$input.params('bookingKey')"
    }
    EOF
  }

  request_parameters = {
    "integration.request.querystring.bookingKey" = "method.request.querystring.bookingKey",
  }
}


# Integration for brbpurchaseservice_post method
resource "aws_api_gateway_integration" "brbpurchaseservice_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.brbpurchaseservice.id
  http_method             = aws_api_gateway_method.brbpurchaseservice_post.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.brbpurchaseservice_invoke_arn

   request_templates = {
    "application/json" = <<EOF
    {
      "body": $input.json('$')
    }
    EOF
  }
}


# # Integration for klaviyoevent_get method
# resource "aws_api_gateway_integration" "klaviyoevent_get_integration" {
#   rest_api_id             = aws_api_gateway_rest_api.website_dev.id
#   resource_id             = aws_api_gateway_resource.klaviyoevent.id
#   http_method             = aws_api_gateway_method.klaviyoevent_get.http_method
#   integration_http_method = "POST"
#   type                    = "AWS"
#   uri                     = var.klaviyoevent_invoke_arn

#   request_templates = {
#     "application/json" = <<EOF
#     {
#       "body": $input.json('$')
#     }
#     EOF
#   }
# }


# Integration for klaviyoevent_post method
resource "aws_api_gateway_integration" "klaviyoevent_post_integration" {
  rest_api_id             = aws_api_gateway_rest_api.website_dev.id
  resource_id             = aws_api_gateway_resource.klaviyoevent.id
  http_method             = aws_api_gateway_method.klaviyoevent_post.http_method
  integration_http_method = "POST"
  type                    = "AWS"
  uri                     = var.klaviyoevent_invoke_arn

   request_templates = {
    "application/json" = <<EOF
    {
      "body": $input.json('$')
    }
    EOF
  }
}
