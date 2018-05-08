module "aws" {
  source = "git@github.com:djaboxx/AwsSimpleDeploy.git"
  service_name = "${var.service_name}"
  env = "${var.env}"
  count = "${var.count}"
  service_version = "${var.service_version}"
}

output "ip_addresses" {
  value = "${module.aws.instance_ips}"
}