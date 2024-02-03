output "caller_identity" {
  value = {
    account_id = data.aws_caller_identity.current.account_id
    user_id = data.aws_caller_identity.current.user_id
  }
}

output "s3_bucket" {
  value = {
    arn         = data.aws_s3_bucket.test.arn
    domain_name = data.aws_s3_bucket.test.bucket_domain_name
  }
}

output "dynamodb_table" {
  value = {
    dynambodb_table_arn = data.dynamodb_table.tableName.arn
  }
}