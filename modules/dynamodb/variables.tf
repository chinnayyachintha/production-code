variable "dynamodb_table_name" {
  type        = string
  description = "Name of the DynamoDB table"
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
}