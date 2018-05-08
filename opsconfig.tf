module "opsconfig" {
    source = "git@github.com:HappyPathway/OpsConfig.git"
    triggers = "${module.aws.instance_ids}"
    hosts = "${module.aws.instance_ips}"
    service_name = "${var.service_name}"
    service_version = "${var.service_version}"
    env = "${var.env}"
}
