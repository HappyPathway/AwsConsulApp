module "opsconfig" {
    source = "git@github.com:HappyPathway/OpsConfig.git"
    triggers = "${module.aws.instance_ids}"
    hosts = "${module.aws.instance_ips}"
    service_name = "${var.service_name}"
    env = "${var.env}"
}