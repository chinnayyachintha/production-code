# Create S3 Bucket for Terraform state
resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = var.terraform_state_bucket_name

  lifecycle {
    prevent_destroy = true
  }

  tags = merge(
    {
      Name = var.terraform_state_bucket_name
    },
    var.tags
  )
}

# Enable Versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "terraform_state_bucket_versioning" {
  bucket = aws_s3_bucket.terraform_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Create Server-Side Encryption Configuration for the S3 bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state_bucket_encryption" {
  bucket = aws_s3_bucket.terraform_state_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}