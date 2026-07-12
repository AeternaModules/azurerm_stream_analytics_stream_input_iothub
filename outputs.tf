output "stream_analytics_stream_input_iothubs_id" {
  description = "Map of id values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.id }
}
output "stream_analytics_stream_input_iothubs_endpoint" {
  description = "Map of endpoint values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.endpoint }
}
output "stream_analytics_stream_input_iothubs_eventhub_consumer_group_name" {
  description = "Map of eventhub_consumer_group_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.eventhub_consumer_group_name }
}
output "stream_analytics_stream_input_iothubs_iothub_namespace" {
  description = "Map of iothub_namespace values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.iothub_namespace }
}
output "stream_analytics_stream_input_iothubs_name" {
  description = "Map of name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.name }
}
output "stream_analytics_stream_input_iothubs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.resource_group_name }
}
output "stream_analytics_stream_input_iothubs_serialization" {
  description = "Map of serialization values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.serialization }
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_key" {
  description = "Map of shared_access_policy_key values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.shared_access_policy_key }
  sensitive   = true
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_name" {
  description = "Map of shared_access_policy_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.shared_access_policy_name }
}
output "stream_analytics_stream_input_iothubs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_stream_input_iothubs, keyed the same as var.stream_analytics_stream_input_iothubs"
  value       = { for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : k => v.stream_analytics_job_name }
}

