variable "terraform_state_bucket_name" {
  type        = string
  description = "Name of the S3 bucket to store Terraform state"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
}