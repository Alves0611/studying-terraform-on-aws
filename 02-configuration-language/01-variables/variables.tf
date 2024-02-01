variable "aws_region" {
  type        = string
  description = "The region to deploy the infra to"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use to authenticate with Terraform. Use 'default' in case you have only one account configured"
  default     = "studying"
}
