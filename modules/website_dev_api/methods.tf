# Create API Gateway methods with parameters and authorization
resource "aws_api_gateway_method" "accessibility_request_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.accessibility_request.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id

  request_parameters = {
    "method.request.header.authorizationToken" = false
  }
}

resource "aws_api_gateway_method" "search_ancillary_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.search_ancillary.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id


  request_parameters = {
    "method.request.querystring.bookingKey"    = false,
    "method.request.header.authorizationToken" = false
  }
}

resource "aws_api_gateway_method" "baggage_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.baggage.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id

  request_parameters = {
    "method.request.querystring.cityPair"        = false,
    "method.request.querystring.currency"        = false,
    "method.request.querystring.departure"       = false,
    "method.request.querystring.passengerCounts" = false,
    "method.request.header.authorizationToken"   = false
  }
}

resource "aws_api_gateway_method" "create_reservation_post" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.create_reservation.id
  http_method          = "POST"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.post_validator.id

  request_parameters = {
    "method.request.header.authorizationToken" = false
  }
}

resource "aws_api_gateway_method" "flight_select_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.flight_select.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id

  request_parameters = {
    "method.request.querystring.cityPair"       = false,
    "method.request.querystring.departureDate"  = false,
    "method.request.querystring.passengerCount" = false,
    "method.request.header.authorizationToken"  = false
  }
}



resource "aws_api_gateway_method" "lowfare_options_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.lowfare_options.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id

  request_parameters = {
    "method.request.querystring.cityPair"           = false,
    "method.request.querystring.daysAfterDeparture" = false,
    "method.request.querystring.departureDate"      = false,
    "method.request.querystring.passengerCount"     = false,
    "method.request.header.authorizationToken"      = false
  }
}

resource "aws_api_gateway_method" "payment_methods_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.payment_methods.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id

  request_parameters = {
    "method.request.header.authorizationToken" = false
  }
}

resource "aws_api_gateway_method" "payment_reservation_post" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.payment_reservation.id
  http_method          = "POST"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.post_validator.id


  request_parameters = {
    "method.request.querystring.reservationKey" = false
    "method.request.header.authorizationToken"  = false
  }
}

resource "aws_api_gateway_method" "seat_selection_get" {
  rest_api_id   = aws_api_gateway_rest_api.website_dev.id
  resource_id   = aws_api_gateway_resource.seat_selection.id
  http_method   = "GET"
  authorization = "NONE"


  request_parameters = {
    "method.request.querystring.bookingKey"    = false
    "method.request.header.authorizationToken" = false
  }
}


# resource "aws_api_gateway_method" "voucher_code_get" {
#   rest_api_id   = aws_api_gateway_rest_api.website_dev.id
#   resource_id   = aws_api_gateway_resource.voucher_code.id
#   http_method   = "GET"
#   authorization = "CUSTOM"
#   authorizer_id = aws_api_gateway_authorizer.custom_authorizer.id
#   request_parameters = {
#     "method.request.querystring.parameter_name" = true
#   }
# }

resource "aws_api_gateway_method" "flight_search_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.flight_search.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id


  request_parameters = {
    "method.request.querystring.cityPair"        = false,
    "method.request.querystring.departureDate"  = false,
    "method.request.querystring.passengerCount" = false,
    "method.request.header.authorizationToken"  = false
  }
}

resource "aws_api_gateway_method" "calenderRates_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.calenderRates.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id


  request_parameters = {
    "method.request.querystring.departureDate" = false,
    "method.request.header.cityPair"           = false,
    "method.request.header.authorizationToken" = false
  }
}

resource "aws_api_gateway_method" "temp_get" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.temp.id
  http_method          = "GET"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.get_validator.id


  request_parameters = {
    "method.request.querystring.bookingKey" = false
  }
}

resource "aws_api_gateway_method" "brbpurchaseservice_post" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.brbpurchaseservice.id
  http_method          = "POST"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.post_validator.id

  request_parameters = {
    "method.request.header.authorizationToken" = false
  }
}

# resource "aws_api_gateway_method" "klaviyoevent_get" {
#   rest_api_id          = aws_api_gateway_rest_api.website_dev.id
#   resource_id          = aws_api_gateway_resource.klaviyoevent.id
#   http_method          = "GET"
#   authorization        = "CUSTOM"
#   authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
#   request_validator_id = aws_api_gateway_request_validator.get_validator.id


#   request_parameters = {
#     "method.request.header.authorizationToken" = false
#   }
# }

resource "aws_api_gateway_method" "klaviyoevent_post" {
  rest_api_id          = aws_api_gateway_rest_api.website_dev.id
  resource_id          = aws_api_gateway_resource.klaviyoevent.id
  http_method          = "POST"
  authorization        = "CUSTOM"
  authorizer_id        = aws_api_gateway_authorizer.custom_authorizer.id
  request_validator_id = aws_api_gateway_request_validator.post_validator.id

  request_parameters = {
    "method.request.header.authorizationToken" = false
  }
}