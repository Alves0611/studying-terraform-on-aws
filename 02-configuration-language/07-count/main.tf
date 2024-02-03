# https://developer.hashicorp.com/terraform/language/meta-arguments/count

resource "random_pet" "count" {
  count = var.create_random_pets ? 1 : 0

  length = 4
  prefix = count.index
}

