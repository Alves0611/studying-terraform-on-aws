# https://developer.hashicorp.com/terraform/language/settings/backends/configuration
# very useful for ci/cd

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}

/* terraform init -backend=true \
    -backend-config="bucket=name-bucket" \
    -backend-config="key=dev/project3/terraform.tfstate" \
    -backend-config="region=us-east-1"
    -backend-config="profile=studying"
    -backend-config="dynamodb_table=table_name"
*/