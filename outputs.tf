output "okta_auth_backends_id" {
  description = "Map of id values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no id are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.id if v.id != null && length(v.id) > 0 }
}
output "okta_auth_backends_accessor" {
  description = "Map of accessor values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no accessor are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.accessor if v.accessor != null && length(v.accessor) > 0 }
}
output "okta_auth_backends_alias_metadata" {
  description = "Map of alias_metadata values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no alias_metadata are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.alias_metadata if v.alias_metadata != null && length(v.alias_metadata) > 0 }
}
output "okta_auth_backends_api_token" {
  description = "Map of api_token values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no api_token are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.api_token if v.api_token != null && length(v.api_token) > 0 }
  sensitive   = true
}
output "okta_auth_backends_api_token_wo_version" {
  description = "Map of api_token_wo_version values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no api_token_wo_version are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.api_token_wo_version if v.api_token_wo_version != null }
}
output "okta_auth_backends_base_url" {
  description = "Map of base_url values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no base_url are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.base_url if v.base_url != null && length(v.base_url) > 0 }
}
output "okta_auth_backends_bypass_okta_mfa" {
  description = "Map of bypass_okta_mfa values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no bypass_okta_mfa are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.bypass_okta_mfa if v.bypass_okta_mfa != null }
}
output "okta_auth_backends_description" {
  description = "Map of description values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no description are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.description if v.description != null && length(v.description) > 0 }
}
output "okta_auth_backends_disable_remount" {
  description = "Map of disable_remount values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no disable_remount are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.disable_remount if v.disable_remount != null }
}
output "okta_auth_backends_group" {
  description = "Map of group values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no group are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.group if v.group != null && length(v.group) > 0 }
}
output "okta_auth_backends_namespace" {
  description = "Map of namespace values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no namespace are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "okta_auth_backends_org_name" {
  description = "Map of org_name values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no org_name are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.org_name if v.org_name != null && length(v.org_name) > 0 }
}
output "okta_auth_backends_organization" {
  description = "Map of organization values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no organization are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "okta_auth_backends_path" {
  description = "Map of path values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no path are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.path if v.path != null && length(v.path) > 0 }
}
output "okta_auth_backends_token" {
  description = "Map of token values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}
output "okta_auth_backends_token_bound_cidrs" {
  description = "Map of token_bound_cidrs values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_bound_cidrs are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_bound_cidrs if v.token_bound_cidrs != null && length(v.token_bound_cidrs) > 0 }
}
output "okta_auth_backends_token_explicit_max_ttl" {
  description = "Map of token_explicit_max_ttl values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_explicit_max_ttl are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_explicit_max_ttl if v.token_explicit_max_ttl != null }
}
output "okta_auth_backends_token_max_ttl" {
  description = "Map of token_max_ttl values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_max_ttl are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_max_ttl if v.token_max_ttl != null }
}
output "okta_auth_backends_token_no_default_policy" {
  description = "Map of token_no_default_policy values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_no_default_policy are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_no_default_policy if v.token_no_default_policy != null }
}
output "okta_auth_backends_token_num_uses" {
  description = "Map of token_num_uses values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_num_uses are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_num_uses if v.token_num_uses != null }
}
output "okta_auth_backends_token_period" {
  description = "Map of token_period values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_period are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_period if v.token_period != null }
}
output "okta_auth_backends_token_policies" {
  description = "Map of token_policies values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_policies are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_policies if v.token_policies != null && length(v.token_policies) > 0 }
}
output "okta_auth_backends_token_ttl" {
  description = "Map of token_ttl values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_ttl are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_ttl if v.token_ttl != null }
}
output "okta_auth_backends_token_type" {
  description = "Map of token_type values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no token_type are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.token_type if v.token_type != null && length(v.token_type) > 0 }
}
output "okta_auth_backends_tune" {
  description = "Map of tune values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no tune are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.tune if v.tune != null && length(v.tune) > 0 }
}
output "okta_auth_backends_user" {
  description = "Map of user values across all okta_auth_backends, keyed the same as var.okta_auth_backends except keys with no user are omitted"
  value       = { for k, v in vault_okta_auth_backend.okta_auth_backends : k => v.user if v.user != null && length(v.user) > 0 }
}

