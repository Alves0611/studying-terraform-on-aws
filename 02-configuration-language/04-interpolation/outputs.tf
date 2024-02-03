output "locals" {
  value = {
    literal_string    = local.literal_string
    concatened_string = local.concatened_string
    function_string   = local.function_string

    herodoc_string          = local.herodoc_string
    indented_herodoc_string = local.indented_herodoc_string

    json         = local.json
    decoded_json = local.decoded_json["foo"]
  }
}
