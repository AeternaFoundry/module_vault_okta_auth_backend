resource "vault_okta_auth_backend" "okta_auth_backends" {
  for_each = var.okta_auth_backends

  alias_metadata          = each.value.alias_metadata
  api_token               = each.value.api_token
  api_token_wo            = each.value.api_token_wo
  api_token_wo_version    = each.value.api_token_wo_version
  base_url                = each.value.base_url
  bypass_okta_mfa         = each.value.bypass_okta_mfa
  description             = each.value.description
  disable_remount         = each.value.disable_remount
  namespace               = each.value.namespace
  org_name                = each.value.org_name
  organization            = each.value.organization
  path                    = each.value.path
  token                   = each.value.token
  token_bound_cidrs       = each.value.token_bound_cidrs
  token_explicit_max_ttl  = each.value.token_explicit_max_ttl
  token_max_ttl           = each.value.token_max_ttl
  token_no_default_policy = each.value.token_no_default_policy
  token_num_uses          = each.value.token_num_uses
  token_period            = each.value.token_period
  token_policies          = each.value.token_policies
  token_ttl               = each.value.token_ttl
  token_type              = each.value.token_type

  dynamic "group" {
    for_each = each.value.group != null ? each.value.group : []
    content {
      group_name = group.value.group_name
      policies   = group.value.policies
    }
  }

  dynamic "tune" {
    for_each = each.value.tune != null ? each.value.tune : []
    content {
      allowed_response_headers     = tune.value.allowed_response_headers
      audit_non_hmac_request_keys  = tune.value.audit_non_hmac_request_keys
      audit_non_hmac_response_keys = tune.value.audit_non_hmac_response_keys
      default_lease_ttl            = tune.value.default_lease_ttl
      listing_visibility           = tune.value.listing_visibility
      max_lease_ttl                = tune.value.max_lease_ttl
      passthrough_request_headers  = tune.value.passthrough_request_headers
      token_type                   = tune.value.token_type
    }
  }

  dynamic "user" {
    for_each = each.value.user != null ? each.value.user : []
    content {
      groups   = user.value.groups
      policies = user.value.policies
      username = user.value.username
    }
  }
}

