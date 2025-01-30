module "website_dev_api" {
  source      = "../../modules/website_dev_api"
  environment = var.environment
  aws_region  = var.aws_region

  # Passing  Lambda ARN's if required
  stages                           = var.stages
  destination_arn                  = module.cloud_watch.cloud_watch_arn
  cloud_watch_arn                  = module.cloud_watch.cloud_watch_arn
  authorizer_uri                   = module.lambda.LamdaAuthorizer_invoke_arn
  lambda_authorizer_arn            = module.lambda.LamdaAuthorizer_invoke_arn
  accessibility_request_invoke_arn = module.lambda.accessibility_request_invoke_arn
  search_ancillary_invoke_arn      = module.lambda.search_ancillary_invoke_arn
  baggage_invoke_arn               = module.lambda.baggage_invoke_arn
  create_reservation_invoke_arn    = module.lambda.create_reservation_invoke_arn
  flight_select_invoke_arn         = module.lambda.flight_select_invoke_arn
  lowfare_options_invoke_arn       = module.lambda.lowfare_options_invoke_arn
  payment_methods_invoke_arn       = module.lambda.payment_methods_invoke_arn
  payment_reservation_invoke_arn   = module.lambda.payment_reservation_invoke_arn
  seat_selection_invoke_arn        = module.lambda.seat_selection_invoke_arn
  flight_search_invoke_arn         = module.lambda.flight_search_invoke_arn
  calenderRates_invoke_arn         = module.lambda.calenderRates_invoke_arn
  brbpurchaseservice_invoke_arn    = module.lambda.brbpurchaseservice_invoke_arn
  klaviyoevent_invoke_arn          = module.lambda.klaviyoevent_invoke_arn
}

module "jwt_token_api" {
  source      = "../../modules/jwt_token_api"
  environment = var.environment
  aws_region  = var.aws_region

  # Passing Lambda invoke ARN if required
  cloud_watch_arn     = module.cloud_watch.cloud_watch_arn
  JWTtoken_invoke_arn = module.lambda.JWTtoken_invoke_arn
  destination_arn     = module.cloud_watch.cloud_watch_arn
  stages              = var.stages
}

module "lambda" {
  source      = "../../modules/lambda"
  environment = var.environment
  timeout     = var.timeout
  memory_size = var.memory_size
  tags        = var.tags

  jwt_token_execution_arn   = module.jwt_token_api.execution_arn
  website_dev_execution_arn = module.website_dev_api.execution_arn
  iam_role_arn              = module.iam_role.iam_role_arn
}

module "cloud_watch" {
  source         = "../../modules/cloud_watch"
  log_group_name = var.log_group_name

  # Passing IAM role ARN if required by CloudWatch
  iam_role_arn = module.iam_role.iam_role_arn
}


module "ssm_parameter_store" {
  source = "../../modules/ssm_parameter_store"

  flairgate_apiuser     = var.flairgate_apiuser
  flairgate_apipassword = var.flairgate_apipassword
  jwt_token             = var.jwt_token
}

module "dynamodb" {
  source = "../../modules/dynamodb"

  dynamodb_table_name = var.dynamodb_table_name
  tags                = var.tags
}

# global services
module "iam_role" {
  source        = "../../global/iam_role"
  iam_role_name = var.iam_role_name
}

module "s3" {
  source = "../../global/s3"

  terraform_state_bucket_name = var.terraform_state_bucket_name
  tags                        = var.tags
}