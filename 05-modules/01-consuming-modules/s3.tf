module "logs" {
  source = "./modules/s3"

  bucket_name = "module-${random_pet.this.id}-bucket"
}

module "s3_pictures" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"
}
