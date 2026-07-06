output "virtual_desktop_workspaces" {
  description = "All virtual_desktop_workspace resources"
  value       = azurerm_virtual_desktop_workspace.virtual_desktop_workspaces
}
output "virtual_desktop_workspaces_description" {
  description = "List of description values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.description]
}
output "virtual_desktop_workspaces_friendly_name" {
  description = "List of friendly_name values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.friendly_name]
}
output "virtual_desktop_workspaces_location" {
  description = "List of location values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.location]
}
output "virtual_desktop_workspaces_name" {
  description = "List of name values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.name]
}
output "virtual_desktop_workspaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.public_network_access_enabled]
}
output "virtual_desktop_workspaces_resource_group_name" {
  description = "List of resource_group_name values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.resource_group_name]
}
output "virtual_desktop_workspaces_tags" {
  description = "List of tags values across all virtual_desktop_workspaces"
  value       = [for k, v in azurerm_virtual_desktop_workspace.virtual_desktop_workspaces : v.tags]
}

