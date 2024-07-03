resource "azurerm_kubernetes_cluster" "aks_rg" {
  name                = "${azurerm_resource_group.aks_rg.name}-cluster"
  location            = azurerm_resource_group.aks_rg.location
  dns_prefix          = "${azurerm_resource_group.aks_rg.name}-nrg"
  resource_group_name = azurerm_resource_group.aks_rg.name
  
  identity {
    type = "SystemAssigned"
  }

  default_node_pool {
    name               = "systempool"
    vm_size            = "Standard_DS2_v2"
    orchestrator_version = data.azurerm_kubernetes_service_versions.current.latest_version
    enable_auto_scaling = true
  }

  role_based_access_control_enabled = true

  windows_profile {
    admin_username = var.windows_admin_username
    admin_password = var.windows_admin_password
  }

  linux_profile {
    admin_username = "azure"
    ssh_key {
      key_data = file(var.ssh_public_key)
    }
  }

  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "azure"
  }
}
