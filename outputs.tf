output "dashboard_grafana_lookup_id" {
  description = "Map of id values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboard_grafana_lookup_api_key_enabled" {
  description = "Map of api_key_enabled values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.api_key_enabled if v.api_key_enabled != null }
}
output "dashboard_grafana_lookup_auto_generated_domain_name_label_scope" {
  description = "Map of auto_generated_domain_name_label_scope values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.auto_generated_domain_name_label_scope if v.auto_generated_domain_name_label_scope != null && length(v.auto_generated_domain_name_label_scope) > 0 }
}
output "dashboard_grafana_lookup_azure_monitor_workspace_integrations" {
  description = "Map of azure_monitor_workspace_integrations values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.azure_monitor_workspace_integrations if v.azure_monitor_workspace_integrations != null && length(v.azure_monitor_workspace_integrations) > 0 }
}
output "dashboard_grafana_lookup_deterministic_outbound_ip_enabled" {
  description = "Map of deterministic_outbound_ip_enabled values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.deterministic_outbound_ip_enabled if v.deterministic_outbound_ip_enabled != null }
}
output "dashboard_grafana_lookup_endpoint" {
  description = "Map of endpoint values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "dashboard_grafana_lookup_grafana_major_version" {
  description = "Map of grafana_major_version values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.grafana_major_version if v.grafana_major_version != null && length(v.grafana_major_version) > 0 }
}
output "dashboard_grafana_lookup_grafana_version" {
  description = "Map of grafana_version values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.grafana_version if v.grafana_version != null && length(v.grafana_version) > 0 }
}
output "dashboard_grafana_lookup_identity" {
  description = "Map of identity values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "dashboard_grafana_lookup_location" {
  description = "Map of location values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dashboard_grafana_lookup_name" {
  description = "Map of name values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dashboard_grafana_lookup_outbound_ips" {
  description = "Map of outbound_ips values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.outbound_ips if v.outbound_ips != null && length(v.outbound_ips) > 0 }
}
output "dashboard_grafana_lookup_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "dashboard_grafana_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dashboard_grafana_lookup_sku" {
  description = "Map of sku values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "dashboard_grafana_lookup_tags" {
  description = "Map of tags values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dashboard_grafana_lookup_zone_redundancy_enabled" {
  description = "Map of zone_redundancy_enabled values across all dashboard_grafana_lookup, keyed the same as var.dashboard_grafana_lookup"
  value       = { for k, v in data.azurerm_dashboard_grafana.dashboard_grafana_lookup : k => v.zone_redundancy_enabled if v.zone_redundancy_enabled != null }
}

