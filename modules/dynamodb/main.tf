# Create DynamoDB Table for state locking
resource "aws_dynamodb_table" "terraform_state_locks" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  # Define the hash key attribute
  attribute {
    name = "LockID"
    type = "S"
  }

  # Enable termination protection (lifecycle prevent_destroy)
  lifecycle {
    prevent_destroy = true
  }

  tags = merge(
    {
      Name = var.dynamodb_table_name
    },
    var.tags
  )
}
