output "vnet" {
    resourceGroup   = "core" 
    name            = "core"
    id              = "${azurerm_virtual_network.core.id}"
}

output "subnets" {
  value = {
      GatewaySubnet = "${azurerm_subnet.GatewaySubnet.id}"
      training      = "${azurerm_subnet.training.id}"
      dev           = "${azurerm_subnet.dev.id}"
  }
}

output "vpnGwPipAddress" {
  value = "${azurerm_public_ip.vpnGatewayPublicIp.ip_address}"
}

output "nsgs" {
  value = {
      AllowSSH          = "{azurerm_network_security_group.AllowSSH.id}"
      AllowHTTP         = "{azurerm_network_security_group.AllowHTTP.id}"
      AllowHTTPS        = "{azurerm_network_security_group.AllowHTTPS.id}"
      AllowSQLServer    = "{azurerm_network_security_group.AllowSQLServer.id}"
      AllowSSH          = "{azurerm_network_security_group.AllowRDP.id}"
  }
}

output "keyvault_id" {
  id = "${azurerm_key_vault.default.id}"
}

output "keyvault_uri" {
  uri = "${azurerm_key_vault.default.uri}"
}
