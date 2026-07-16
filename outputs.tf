output "virtual_desktop_workspaces_id" {
  description = "Map of id values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_desktop_workspaces_description" {
  description = "Map of description values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "virtual_desktop_workspaces_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "virtual_desktop_workspaces_location" {
  description = "Map of location values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "virtual_desktop_workspaces_name" {
  description = "Map of name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_desktop_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "virtual_desktop_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_desktop_workspaces_tags" {
  description = "Map of tags values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

