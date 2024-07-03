resource "azurerm_log_analytics_workspace" "logs" {
  name = "${azurerm_resource_group.aks_rg.name}-logs"
  location = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.resource_group_name
}