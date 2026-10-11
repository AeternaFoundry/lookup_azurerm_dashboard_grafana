data "azurerm_dashboard_grafana" "dashboard_grafana_lookup" {
  for_each = var.dashboard_grafana_lookup

  name                = each.value.name
  resource_group_name = each.value.resource_group_name

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }
}

