output "virtual_desktop_workspaces_description" {
  description = "Map of description values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.description }
}
output "virtual_desktop_workspaces_friendly_name" {
  description = "Map of friendly_name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.friendly_name }
}
output "virtual_desktop_workspaces_location" {
  description = "Map of location values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.location }
}
output "virtual_desktop_workspaces_name" {
  description = "Map of name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.name }
}
output "virtual_desktop_workspaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.public_network_access_enabled }
}
output "virtual_desktop_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.resource_group_name }
}
output "virtual_desktop_workspaces_tags" {
  description = "Map of tags values across all virtual_desktop_workspaces, keyed the same as var.virtual_desktop_workspaces"
  value       = { for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : k => v.tags }
}

