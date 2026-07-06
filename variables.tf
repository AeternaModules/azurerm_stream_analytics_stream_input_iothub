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
    - shared_access_policy_name
    - stream_analytics_job_name
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - type (required)
EOT

  type = map(object({
    endpoint                     = string
    eventhub_consumer_group_name = string
    iothub_namespace             = string
    name                         = string
    resource_group_name          = string
    shared_access_policy_key     = string
    shared_access_policy_name    = string
    stream_analytics_job_name    = string
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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_stream_input_iothub's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
}

