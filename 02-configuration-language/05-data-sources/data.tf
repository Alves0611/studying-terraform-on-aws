data "aws_caller_identity" "current" {}

data "aws_s3_bucket" "test" {
  bucket = "bucket_name"
}

data "aws_dynamodb_table" "tableName" {
  name = "name_table"
}
