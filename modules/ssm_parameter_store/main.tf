# Create a new AWS SSM Parameter Store
resource "aws_ssm_parameter" "flairgate_apiuser" {
  name        = "/flairgate/apiuser"
  type        = "SecureString"
  value       = var.flairgate_apiuser
  description = "API user for authentication"

  # overwrite = true  # This will overwrite if it exists
  
  lifecycle {
    ignore_changes = [name]  # Optionally ignore if you don't want it to recreate
  }

}

resource "aws_ssm_parameter" "flairgate_apipassword" {
  name        = "/flairgate/apipassword"
  type        = "SecureString"
  value       = var.flairgate_apipassword
  description = "API password for authentication"

  # overwrite = true  # This will overwrite if it exists
  
  lifecycle {
    ignore_changes = [name]  # Optionally ignore if you don't want it to recreate
  }
}

resource "aws_ssm_parameter" "jwt_token" {
  name        = "/jwt/secret-key/dev"
  type        = "SecureString"
  value       = var.jwt_token
  description = "JWT token for API authentication"

  # overwrite = true  # This will overwrite if it exists
  
  lifecycle {
    ignore_changes = [name]  # Optionally ignore if you don't want it to recreate
  }
}