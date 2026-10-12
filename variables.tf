variable "okta_auth_backends" {
  description = <<EOT
Map of okta_auth_backends, attributes below
Optional:
    - alias_metadata
    - api_token
    - api_token_wo
    - api_token_wo_version
    - base_url
    - bypass_okta_mfa
    - description
    - disable_remount
    - namespace
    - org_name
    - organization
    - path
    - token
    - token_bound_cidrs
    - token_explicit_max_ttl
    - token_max_ttl
    - token_no_default_policy
    - token_num_uses
    - token_period
    - token_policies
    - token_ttl
    - token_type
    - group (block):
        - group_name (optional)
        - policies (optional)
    - tune (block):
        - allowed_response_headers (optional)
        - audit_non_hmac_request_keys (optional)
        - audit_non_hmac_response_keys (optional)
        - default_lease_ttl (optional)
        - listing_visibility (optional)
        - max_lease_ttl (optional)
        - passthrough_request_headers (optional)
        - token_type (optional)
    - user (block):
        - groups (optional)
        - policies (optional)
        - username (optional)
EOT

  type = map(object({
    alias_metadata          = optional(map(string))
    api_token               = optional(string)
    api_token_wo            = optional(string)
    api_token_wo_version    = optional(number)
    base_url                = optional(string)
    bypass_okta_mfa         = optional(bool)
    description             = optional(string)
    disable_remount         = optional(bool)
    namespace               = optional(string)
    org_name                = optional(string)
    organization            = optional(string)
    path                    = optional(string)
    token                   = optional(string)
    token_bound_cidrs       = optional(set(string))
    token_explicit_max_ttl  = optional(number)
    token_max_ttl           = optional(number)
    token_no_default_policy = optional(bool)
    token_num_uses          = optional(number)
    token_period            = optional(number)
    token_policies          = optional(set(string))
    token_ttl               = optional(number)
    token_type              = optional(string)
    group = optional(list(object({
      group_name = optional(string)
      policies   = optional(set(string))
    })))
    tune = optional(list(object({
      allowed_response_headers     = optional(list(string))
      audit_non_hmac_request_keys  = optional(list(string))
      audit_non_hmac_response_keys = optional(list(string))
      default_lease_ttl            = optional(string)
      listing_visibility           = optional(string)
      max_lease_ttl                = optional(string)
      passthrough_request_headers  = optional(list(string))
      token_type                   = optional(string)
    })))
    user = optional(list(object({
      groups   = optional(set(string))
      policies = optional(set(string))
      username = optional(string)
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

