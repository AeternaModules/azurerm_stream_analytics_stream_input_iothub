variable "stream_analytics_stream_input_iothubs" {
  description = <<EOT
Map of stream_analytics_stream_input_iothubs, attributes below
Required:
    - endpoint
    - eventhub_consumer_group_name
    - iothub_namespace
    - name
    - resource_group_name
    - shared_access_policy_key
    - shared_access_policy_key_key_vault_id (optional, alternative to shared_access_policy_key)
    - shared_access_policy_key_key_vault_secret_name (optional, alternative to shared_access_policy_key)
    - shared_access_policy_name
    - stream_analytics_job_name
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - type (required)
EOT

  type = map(object({
    endpoint                                       = string
    eventhub_consumer_group_name                   = string
    iothub_namespace                               = string
    name                                           = string
    resource_group_name                            = string
    shared_access_policy_key                       = string
    shared_access_policy_key_key_vault_id          = optional(string)
    shared_access_policy_key_key_vault_secret_name = optional(string)
    shared_access_policy_name                      = string
    stream_analytics_job_name                      = string
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      type            = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.endpoint) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.iothub_namespace) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.eventhub_consumer_group_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.shared_access_policy_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        length(v.shared_access_policy_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_stream_input_iothubs : (
        v.serialization.field_delimiter == null || (contains([" ", ",", "\t", "|", ";"], v.serialization.field_delimiter))
      )
    ])
    error_message = "must be one of:  , ,, 	, |, ;"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

