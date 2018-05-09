# Access a key in Consul
data "consul_keys" "dns" {

  key {
    name    = "dns_name"
    path    = "config/global/dns_name"
    default = ""
  }

  key {
    name    = "dns_zone"
    path    = "config/region/${var.region}/dns_zone"
    default = ""
  }

  key {
    name    = "private_zone"
    path    = "config/region/${var.region}/private_zone"
    default = ""
  }
}

# Access a key in Consul
data "consul_keys" "aws_infra" {
  key {
    name    = "subnet_id"
    path    = "services/${var.env}/${var.service_name}/elb_subnet_id"
    default = ""
  }
}