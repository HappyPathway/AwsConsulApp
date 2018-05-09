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