variable "appsync_functions" {
  description = <<EOT
Map of appsync_functions, attributes below
Required:
    - api_id
    - data_source
    - name
Optional:
    - code
    - description
    - function_version
    - max_batch_size
    - region
    - request_mapping_template
    - response_mapping_template
    - runtime (block):
        - name (required)
        - runtime_version (required)
    - sync_config (block):
        - conflict_detection (optional)
        - conflict_handler (optional)
        - lambda_conflict_handler_config (optional, block):
            - lambda_conflict_handler_arn (optional)
EOT

  type = map(object({
    api_id                    = string
    data_source               = string
    name                      = string
    code                      = optional(string)
    description               = optional(string)
    function_version          = optional(string)
    max_batch_size            = optional(number)
    region                    = optional(string)
    request_mapping_template  = optional(string)
    response_mapping_template = optional(string)
    runtime = optional(object({
      name            = string
      runtime_version = string
    }))
    sync_config = optional(object({
      conflict_detection = optional(string)
      conflict_handler   = optional(string)
      lambda_conflict_handler_config = optional(object({
        lambda_conflict_handler_arn = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appsync_functions : (
        v.code == null || (length(v.code) >= 1 && length(v.code) <= 32768)
      )
    ])
    error_message = "must be between 1 and 32768 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appsync_functions : (
        v.max_batch_size == null || (v.max_batch_size >= 0 && v.max_batch_size <= 2000)
      )
    ])
    error_message = "must be between 0 and 2000"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

