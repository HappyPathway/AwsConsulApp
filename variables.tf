variable "count" {
    default = 1
}

variable "service_version" {}

variable "instance_protocol" {
    default = "http"
}
variable "env" {
    default = "staging"
}

variable "service_name" {
    default = "app"
}

variable "region" {
    default = "us-east-1"
}

variable "internal_service" {
  default = false
}

variable "service_port" {
  default = 80
}

variable "service_healthcheck" {}

variable "service_access" {
  default = "0.0.0.0/0"
}

variable "ssh_access" {
  default = "0.0.0.0/0"
}


variable "service_healthcheck_healthy_threshold" {
  default = 2
}

variable "service_healthcheck_unhealthy_threshold" {
  default = 3
}

variable "service_healthcheck_timeout" {
  default = 3
}

variable "service_healthcheck_interval" {
  default = 30
}

variable "cross_zone_load_balancing" {
  default = true
}

variable "connection_draining_timeout" {
  default = 400
}

variable "connection_draining" {
  default = true
}

variable "idle_timeout" {
  default = 400
}

variable "set_dns" {
  default = true
}

variable "enable_ssl" {
  default = true
}

variable "consul_address" {
    default = "consul.ops.happypathway.com:8500"
}

variable "consul_dc" {
    default = "dc1"
}

variable "server_pool" {}
