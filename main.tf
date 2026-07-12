data "azurerm_key_vault_secret" "shared_access_policy_key" {
  for_each     = { for k, v in var.stream_analytics_stream_input_iothubs : k => v if v.shared_access_policy_key_key_vault_id != null && v.shared_access_policy_key_key_vault_secret_name != null }
  name         = each.value.shared_access_policy_key_key_vault_secret_name
  key_vault_id = each.value.shared_access_policy_key_key_vault_id
}
resource "azurerm_stream_analytics_stream_input_iothub" "stream_analytics_stream_input_iothubs" {
  for_each = var.stream_analytics_stream_input_iothubs

  endpoint                     = each.value.endpoint
  eventhub_consumer_group_name = each.value.eventhub_consumer_group_name
  iothub_namespace             = each.value.iothub_namespace
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  shared_access_policy_key     = each.value.shared_access_policy_key != null ? each.value.shared_access_policy_key : try(data.azurerm_key_vault_secret.shared_access_policy_key[each.key].value, null)
  shared_access_policy_name    = each.value.shared_access_policy_name
  stream_analytics_job_name    = each.value.stream_analytics_job_name

  serialization {
    encoding        = each.value.serialization.encoding
    field_delimiter = each.value.serialization.field_delimiter
    type            = each.value.serialization.type
  }
}

