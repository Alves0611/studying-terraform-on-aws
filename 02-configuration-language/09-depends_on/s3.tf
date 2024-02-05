resource "aws_s3_bucket" "bucket" {
  bucket = "${local.namespaced_service_name}-${data.aws_caller_identity.this.account_id}"
}

