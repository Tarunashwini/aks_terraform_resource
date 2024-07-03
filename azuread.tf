resource "azuread_group" "aks_admin" {
    display_name =  "${azurerm_resource_group.aks_rg.name}-ad"
    security_enabled = true
}