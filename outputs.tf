output "stream_analytics_stream_input_iothubs_id" {
  description = "Map of id values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_stream_input_iothubs_endpoint" {
  description = "Map of endpoint values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "stream_analytics_stream_input_iothubs_eventhub_consumer_group_name" {
  description = "Map of eventhub_consumer_group_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.eventhub_consumer_group_name if v.eventhub_consumer_group_name != null && length(v.eventhub_consumer_group_name) > 0 }
}
output "stream_analytics_stream_input_iothubs_iothub_namespace" {
  description = "Map of iothub_namespace values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.iothub_namespace if v.iothub_namespace != null && length(v.iothub_namespace) > 0 }
}
output "stream_analytics_stream_input_iothubs_name" {
  description = "Map of name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_stream_input_iothubs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_stream_input_iothubs_serialization" {
  description = "Map of serialization values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.serialization if v.serialization != null && length(v.serialization) > 0 }
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_key" {
  description = "Map of shared_access_policy_key values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.shared_access_policy_key if v.shared_access_policy_key != null && length(v.shared_access_policy_key) > 0 }
  sensitive   = true
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_name" {
  description = "Map of shared_access_policy_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.shared_access_policy_name if v.shared_access_policy_name != null && length(v.shared_access_policy_name) > 0 }
}
output "stream_analytics_stream_input_iothubs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}

