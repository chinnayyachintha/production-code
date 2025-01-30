# method response accessibility_request
resource "aws_api_gateway_method_response" "accessibility_request_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.accessibility_request.id
  http_method = aws_api_gateway_method.accessibility_request_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response search ancillary
resource "aws_api_gateway_method_response" "search_ancillary_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.search_ancillary.id
  http_method = aws_api_gateway_method.search_ancillary_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response baggage
resource "aws_api_gateway_method_response" "baggage_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.baggage.id
  http_method = aws_api_gateway_method.baggage_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response create_reservation
resource "aws_api_gateway_method_response" "create_reservation_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.create_reservation.id
  http_method = aws_api_gateway_method.create_reservation_post.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response flightSelect
resource "aws_api_gateway_method_response" "flight_select_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.flight_select.id
  http_method = aws_api_gateway_method.flight_select_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response lowfare_options
resource "aws_api_gateway_method_response" "lowfare_options_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.lowfare_options.id
  http_method = aws_api_gateway_method.lowfare_options_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}


# method response payment_methods
resource "aws_api_gateway_method_response" "payment_methods_get_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.payment_methods.id
  http_method = aws_api_gateway_method.payment_methods_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response payment_reservation
resource "aws_api_gateway_method_response" "payment_reservation_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.payment_reservation.id
  http_method = aws_api_gateway_method.payment_reservation_post.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response seat_selection
resource "aws_api_gateway_method_response" "seat_selection_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.seat_selection.id
  http_method = aws_api_gateway_method.seat_selection_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response flight_search
resource "aws_api_gateway_method_response" "flight_search_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.flight_search.id
  http_method = aws_api_gateway_method.flight_search_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response calenderRates
resource "aws_api_gateway_method_response" "calenderRates_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.calenderRates.id
  http_method = aws_api_gateway_method.calenderRates_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response temp
resource "aws_api_gateway_method_response" "temp_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.temp.id
  http_method = aws_api_gateway_method.temp_get.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# method response brbpurchaseservice
resource "aws_api_gateway_method_response" "brbpurchaseservice_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.brbpurchaseservice.id
  http_method = aws_api_gateway_method.brbpurchaseservice_post.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}

# # method response klaviyoevent_get
# resource "aws_api_gateway_method_response" "klaviyoevent_get_response" {
#   rest_api_id = aws_api_gateway_rest_api.website_dev.id
#   resource_id = aws_api_gateway_resource.klaviyoevent.id
#   http_method = aws_api_gateway_method.klaviyoevent_get.http_method
#   status_code = 200

#   response_models = {
#     "application/json" = "Empty"
#   }

# }

resource "aws_api_gateway_method_response" "klaviyoevent_post_response" {
  rest_api_id = aws_api_gateway_rest_api.website_dev.id
  resource_id = aws_api_gateway_resource.klaviyoevent.id
  http_method = aws_api_gateway_method.klaviyoevent_post.http_method
  status_code = 200

  response_models = {
    "application/json" = "Empty"
  }

}