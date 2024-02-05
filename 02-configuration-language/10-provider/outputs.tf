output "buckets" {
  value = {
    virginia  = aws_s3_bucket.bucket.id
    sao_paulo = aws_s3_bucket.bucket_sp.id
  }
}
