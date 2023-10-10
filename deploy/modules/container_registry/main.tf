resource "azurerm_resource_group" "acr_rg" {
  name     = "rg-settledown-acr-shd-ne-001"
  location = "North Europe"
  tags     = {
    Area = "Common"
  }
}

resource "azurerm_container_registry" "acr" {
  name                          = "crssdshdne001"
  resource_group_name           = azurerm_resource_group.acr_rg.name
  location                      = azurerm_resource_group.acr_rg.location
  sku                           = "Basic"
  admin_enabled                 = true 
  public_network_access_enabled = true
  tags     = {
    Area = "Common"
  }
  depends_on = [ 
    azurerm_resource_group.acr_rg 
  ]
  lifecycle {
    prevent_destroy = true
  }  
}