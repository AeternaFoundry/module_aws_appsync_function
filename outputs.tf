output "appsync_functions_id" {
  description = "Map of id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appsync_functions_api_id" {
  description = "Map of api_id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.api_id if v.api_id != null && length(v.api_id) > 0 }
}
output "appsync_functions_arn" {
  description = "Map of arn values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appsync_functions_code" {
  description = "Map of code values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.code if v.code != null && length(v.code) > 0 }
}
output "appsync_functions_data_source" {
  description = "Map of data_source values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.data_source if v.data_source != null && length(v.data_source) > 0 }
}
output "appsync_functions_description" {
  description = "Map of description values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appsync_functions_function_id" {
  description = "Map of function_id values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.function_id if v.function_id != null && length(v.function_id) > 0 }
}
output "appsync_functions_function_version" {
  description = "Map of function_version values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.function_version if v.function_version != null && length(v.function_version) > 0 }
}
output "appsync_functions_max_batch_size" {
  description = "Map of max_batch_size values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.max_batch_size if v.max_batch_size != null }
}
output "appsync_functions_name" {
  description = "Map of name values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appsync_functions_region" {
  description = "Map of region values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appsync_functions_request_mapping_template" {
  description = "Map of request_mapping_template values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.request_mapping_template if v.request_mapping_template != null && length(v.request_mapping_template) > 0 }
}
output "appsync_functions_response_mapping_template" {
  description = "Map of response_mapping_template values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => v.response_mapping_template if v.response_mapping_template != null && length(v.response_mapping_template) > 0 }
}
output "appsync_functions_runtime" {
  description = "Map of runtime values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => one(v.runtime) if v.runtime != null && length(v.runtime) > 0 }
}
output "appsync_functions_sync_config" {
  description = "Map of sync_config values across all appsync_functions, keyed the same as var.appsync_functions"
  value       = { for k, v in aws_appsync_function.appsync_functions : k => one(v.sync_config) if v.sync_config != null && length(v.sync_config) > 0 }
}

