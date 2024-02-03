resource "aws_dynamodb_table" "testing" {
  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = false
  hash_key                    = "test"
  name                        = "testing-0611"
  range_key                   = "test-1"
  read_capacity               = 5
  restore_date_time           = null
  restore_source_name         = null
  restore_to_latest_time      = null
  stream_enabled              = false
  stream_view_type            = null
  table_class                 = "STANDARD"
  tags                        = {}
  tags_all                    = {}
  write_capacity              = 5
  attribute {
    name = "test"
    type = "S"
  }
  attribute {
    name = "test-1"
    type = "S"
  }
  point_in_time_recovery {
    enabled = false
  }
  ttl {
    attribute_name = ""
    enabled        = false
  }
}