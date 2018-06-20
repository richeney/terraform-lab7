module "scaffold" {
    source      = "/usr/richard/clouddrive/citadel-terraform/modules/scaffold"
    tenant_id   = "${var.tenant_id}"
    object_id   = "${var.object_id}"
}

output "VpnGatewayPipAddress" {

    value = "${module.scaffold.vpnGwPipAddress}"
}
