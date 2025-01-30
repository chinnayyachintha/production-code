# lambda Function files

data "archive_file" "accessibilityRequest_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/accessibilityRequest/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/accessibilityRequest/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "ancillarySearch_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/ancillarySearch/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/ancillarySearch/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "baggage_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/baggage/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/baggage/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "brbpurchaseservice_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/brbpurchaseservice/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/brbpurchaseservice/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "calenderRates_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/calenderRates/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/calenderRates/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "createReservation_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/createReservation/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/createReservation/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "flightSearch_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/flightSearch/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/flightSearch/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "flightSelection_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/flightSelection/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/flightSelection/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "JWTtoken_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/JWTtoken/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/JWTtoken/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "klaviyoevent_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/klaviyoevent/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/klaviyoevent/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "lambdaAuthorizer_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/lambdaAuthorizer/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/lambdaAuthorizer/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "lowFareoptions_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/lowFareoptions/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/lowFareoptions/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "paymentMethods_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/paymentMethods/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/paymentMethods/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "paymentReservations_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/paymentReservations/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/paymentReservations/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "seatSelection_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/seatSelection/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/seatSelection/lambda_function.zip" # Path where the zip file will be saved
}

data "archive_file" "voucherCode_zip" {
  type        = "zip"
  source_file = "../../lambda_function_files/voucherCode/lambda_function.py"  # Path to your Python file
  output_path = "../../lambda_function_files/voucherCode/lambda_function.zip" # Path where the zip file will be saved
}

# lambda layers

data "archive_file" "PyJWT_zip" {
  type        = "zip"
  source_dir  = "../../lambda_layers/PyJWT"  # Directory containing Python files
  output_path = "../../lambda_layers/PyJWT.zip"  # Output zip file
}

data "archive_file" "python_dependencies_layer_zip" {
  type        = "zip"
  source_dir  = "../../lambda_layers/python_dependencies_layer"  # Directory containing dependencies
  output_path = "../../lambda_layers/python_dependencies_layer.zip"  # Output zip file
}
