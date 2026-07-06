output "stream_analytics_stream_input_iothubs" {
  description = "All stream_analytics_stream_input_iothub resources"
  value       = azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs
  sensitive   = true
}
output "stream_analytics_stream_input_iothubs_endpoint" {
  description = "List of endpoint values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.endpoint]
}
output "stream_analytics_stream_input_iothubs_eventhub_consumer_group_name" {
  description = "List of eventhub_consumer_group_name values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.eventhub_consumer_group_name]
}
output "stream_analytics_stream_input_iothubs_iothub_namespace" {
  description = "List of iothub_namespace values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.iothub_namespace]
}
output "stream_analytics_stream_input_iothubs_name" {
  description = "List of name values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.name]
}
output "stream_analytics_stream_input_iothubs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.resource_group_name]
}
output "stream_analytics_stream_input_iothubs_serialization" {
  description = "List of serialization values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.serialization]
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_key" {
  description = "List of shared_access_policy_key values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.shared_access_policy_key]
  sensitive   = true
}
output "stream_analytics_stream_input_iothubs_shared_access_policy_name" {
  description = "List of shared_access_policy_name values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.shared_access_policy_name]
}
output "stream_analytics_stream_input_iothubs_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_stream_input_iothubs"
  value       = [for k, v in azurerm_stream_analytics_stream_input_iothub.stream_analytics_stream_input_iothubs : v.stream_analytics_job_name]
}

