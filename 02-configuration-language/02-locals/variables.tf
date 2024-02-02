variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = "The region to deploy the infra to"
  default     = "us-east-1"

  validation {
    condition     = can(regex("^[a-z][a-z]-[a-z]+-[0-9]+$", var.aws_region))
    error_message = "Invalid AWS region name"
  }
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use to authenticate with Terraform. Use 'default' in case you have only one account configured"
  default     = "studying"
}



variable "dynamodb_field_list" {
  type        = list(string)
  description = ""
  default     = ["Userid", "GameTitle"]
}

variable "database_config" {
  type = object({
    table_name          = string
    read_capacity       = optional(number, 3)
    write_capacity      = optional(number, 3)
    deletion_protection = optional(bool, false)
    hash_key = object({
      name = string
      type = string
    })
    range_key = object({
      name = string
      type = string
    })
  })
  description = ""
  default = {
    table_name = "GameScores"
    hash_key = {
      name = "UserId"
      type = "S"
    }
    range_key = {
      name = "GameTitle"
      type = "S"
    }
  }
}



variable "tags" {
  type        = map(string)
  description = ""
  default = {
    "Project" = "Studying"

  }
}


variable "service_name" {
  type = string
  description = ""
  default = "game_store_service"
}