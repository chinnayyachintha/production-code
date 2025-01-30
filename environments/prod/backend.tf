terraform {
  backend "s3" {
    bucket         = "ihw-terraform-state-buk"
    key            = "IHW/prod/statefile.tfstate"
    region         = "ca-central-1"
    encrypt        = true
    dynamodb_table = "ihw-terraform-state-locks"
  }
}