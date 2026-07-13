variable "virtual_desktop_workspaces" {
  description = <<EOT
Map of virtual_desktop_workspaces, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - description
    - friendly_name
    - public_network_access_enabled
    - tags
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    description                   = optional(string)
    friendly_name                 = optional(string)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        v.friendly_name == null || (length(v.friendly_name) >= 1 && length(v.friendly_name) <= 64)
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 512)
      )
    ])
    error_message = "must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_desktop_workspaces : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

