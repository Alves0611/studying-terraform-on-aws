data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "tfstate-891377404175"
    key    = "dev/project-1/terraform.tfstate"
    region = "us-east-1"
    profile = "studying"
  }
}