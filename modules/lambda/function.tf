# JWTtoken
resource "aws_lambda_function" "JWTtoken" {
  filename         = data.archive_file.JWTtoken_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.JWTtoken_zip.output_path)
  function_name    = "JWTtoken-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "JWTtoken-AD"
    },
    var.tags
  )

}

# LamdaAuthorizer
resource "aws_lambda_function" "LamdaAuthorizer" {
  filename         = data.archive_file.lambdaAuthorizer_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.lambdaAuthorizer_zip.output_path)
  function_name    = "LamdaAuthoriser-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "LamdaAuthoriser-AD"
    },
    var.tags
  )

}

# accessibility_request
resource "aws_lambda_function" "accessibility_request" {
  filename         = data.archive_file.accessibilityRequest_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.accessibilityRequest_zip.output_path)
  function_name    = "accessibilityRequest-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "accessibilityRequest-AD"
    },
    var.tags
  )

}

# search_ancillary
resource "aws_lambda_function" "search_ancillary" {
  filename         = data.archive_file.ancillarySearch_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.ancillarySearch_zip.output_path)
  function_name    = "ancillarySearch-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "ancillarySearch-AD"
    },
    var.tags
  )

}

resource "aws_lambda_function" "baggage" {
  filename         = data.archive_file.baggage_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.baggage_zip.output_path)
  function_name    = "baggage-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "baggage-AD"
    },
    var.tags
  )

}

resource "aws_lambda_function" "create_reservation" {
  filename         = data.archive_file.createReservation_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.createReservation_zip.output_path)
  function_name    = "createReservation-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "createReservation-AD"
    },
    var.tags
  )
}

resource "aws_lambda_function" "flight_select" {
  filename         = data.archive_file.flightSelection_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.flightSelection_zip.output_path)
  function_name    = "flightSelection-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "flightSelection-AD"
    },
    var.tags
  )

}

resource "aws_lambda_function" "lowfare_options" {
  filename         = data.archive_file.lowFareoptions_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.lowFareoptions_zip.output_path)
  function_name    = "lowFareoptions-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "lowFareoptions-AD"
    },
    var.tags
  )
}

resource "aws_lambda_function" "payment_methods" {
  filename         = data.archive_file.paymentMethods_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.paymentMethods_zip.output_path)
  function_name    = "paymentMethods-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "paymentMethods-AD"
    },
    var.tags
  )

}

resource "aws_lambda_function" "payment_reservation" {
  filename         = data.archive_file.paymentReservations_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.paymentReservations_zip.output_path)
  function_name    = "reservationPaymentTransaction_IHW-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "reservationPaymentTransaction_IHW-AD"
    },
    var.tags
  )
}

resource "aws_lambda_function" "seat_selection" {
  filename         = data.archive_file.seatSelection_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.seatSelection_zip.output_path)
  function_name    = "seatSelection-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "seatSelection-AD"
    },
    var.tags
  )

}


# resource "aws_lambda_function" "voucher_code" {
#   filename         = data.archive_file.voucherCode_zip.output_path
#   source_code_hash = filebase64sha256(data.archive_file.voucherCode_zip.output_path)
#   function_name    = "voucherCode-AD"
#   handler          = "lambda_function.lambda_handler"
#   role             = var.iam_role_arn
#   runtime          = "python3.12"
#   timeout          = var.timeout
#   memory_size      = var.memory_size
#   ephemeral_storage {
#     size = var.memory_size
#   }

#   layers = [
#     aws_lambda_layer_version.my_layer2.arn,
#     "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
#   ]
#   tags = merge(
#     {
#       Name = "voucherCode-AD"
#     },
#     var.tags
#   )

# }

resource "aws_lambda_function" "flight_search" {
  filename         = data.archive_file.flightSearch_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.flightSearch_zip.output_path)
  function_name    = "flightSearch-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "flightSearch-AD"
    },
    var.tags
  )

}

resource "aws_lambda_function" "calenderRates" {
  filename         = data.archive_file.calenderRates_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.calenderRates_zip.output_path)
  function_name    = "calenderRates-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.11"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.PyJWT-Layer.arn,
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python311:1"
  ]

  tags = merge(
    {
      Name = "calenderRates-AD"
    },
    var.tags
  )

}

#brbpurchaseservice
resource "aws_lambda_function" "brbpurchaseservice" {
  filename         = data.archive_file.brbpurchaseservice_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.brbpurchaseservice_zip.output_path)
  function_name    = "brbpurchaseservice-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "brbpurchaseservice-AD"
    },
    var.tags
  )

}


#klaviyoevent
resource "aws_lambda_function" "klaviyoevent" {
  filename         = data.archive_file.klaviyoevent_zip.output_path
  source_code_hash = filebase64sha256(data.archive_file.klaviyoevent_zip.output_path)
  function_name    = "klaviyoevent-AD"
  handler          = "lambda_function.lambda_handler"
  role             = var.iam_role_arn
  runtime          = "python3.12"
  timeout          = var.timeout
  memory_size      = var.memory_size
  ephemeral_storage {
    size = var.memory_size
  }

  layers = [
    aws_lambda_layer_version.python_dependencies-Layer.arn,
    "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python312:1"
  ]

  tags = merge(
    {
      Name = "klaviyoevent-AD"
    },
    var.tags
  )

}
