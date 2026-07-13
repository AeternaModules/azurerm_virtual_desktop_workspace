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
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_desktop_workspace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.WorkspaceName] !ok
  # path: name
  #   condition: length(value) > 0
  #   message:   [from validate.WorkspaceName: invalid when value == ""]
  #   source:    [from validate.WorkspaceName: invalid when value == ""]
  # path: name
  #   source:    [from validate.WorkspaceName] len(v) > maxLength || len(v) < minLength
  # path: name
  #   source:    [from validate.WorkspaceName] !matched
  # path: name
  #   source:    [from validate.WorkspaceName] !matched
  # path: name
  #   source:    [from validate.WorkspaceName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
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
  # path: friendly_name
  #   condition: length(value) >= 1 && length(value) <= 64
  #   message:   must be between 1 and 64 characters
  # path: description
  #   condition: length(value) >= 1 && length(value) <= 512
  #   message:   must be between 1 and 512 characters
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

