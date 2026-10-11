variable "dashboard_grafana_lookup" {
  description = <<EOT
Map of dashboard_grafana_lookup, attributes below
Required:
    - name
    - resource_group_name
Optional:
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dashboard_grafana_lookup : (
        can(regex("^[a-zA-Z][-a-zA-Z\\d]{0,21}[a-zA-Z\\d]$", v.name))
      )
    ])
    error_message = "The name length must be from 2 to 23 characters. The name can only contain letters, numbers and dashes, and it must begin with a letter and end with a letter or digit."
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboard_grafana_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboard_grafana_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dashboard_grafana_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

