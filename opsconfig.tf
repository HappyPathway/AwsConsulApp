module "opsconfig" {
    source = "git@github.com:HappyPathway/OpsConfig.git"
    dependencies = "${module.aws.instance_ids}"
    triggers = "${module.aws.instance_ids}"
    hosts = "${module.aws.instance_ips}"
}