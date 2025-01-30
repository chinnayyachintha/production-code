variable "environment" {
  type        = string
  description = "Deployment environment (e.g., dev, prod)"
}

variable "lambda_authorizer_arn" {
  type        = string
  description = "Lambda Authorizer ARN for API Gateway"
}

variable "aws_region" {
  type        = string
  description = "AWS Region to deploy resources"
}

# Define stages as a variable for flexibility
variable "stages" {
  type        = list(string)
  description = "Stages to deploy to"
}

# deployment.tf
variable "cloud_watch_arn" { }

variable "destination_arn" {}

# validator_authorizer.tf
variable "authorizer_uri" { }

# integration.tf
variable "accessibility_request_invoke_arn" { }

variable "search_ancillary_invoke_arn" { }

variable "baggage_invoke_arn" { }

variable "create_reservation_invoke_arn" { }

variable "flight_select_invoke_arn" { }

variable "lowfare_options_invoke_arn" { }

variable "payment_methods_invoke_arn" { }

variable "payment_reservation_invoke_arn" { }

variable "seat_selection_invoke_arn" { }

variable "flight_search_invoke_arn" { }

variable "calenderRates_invoke_arn" { }

variable "brbpurchaseservice_invoke_arn"{}

variable "klaviyoevent_invoke_arn"{}


