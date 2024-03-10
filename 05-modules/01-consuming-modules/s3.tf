module "logs" {
  source = "./modules/s3"

  bucket_name = "module-${random_pet.this.id}-bucket"
}
