resource "aws_route53_record" "service" {
  zone_id = "${data.consul_keys.dns.var.dns_zone}"
  name    = "${var.service_name}-${var.env}-${var.service_version}.${data.consul_keys.dns.var.dns_name}"
  type    = "A"
  ttl     = "300"
  records = ["${module.aws.instance_ips}"]
}

resource "aws_route53_record" "service_nodes" {
  count   = "${var.count)}"
  zone_id = "${data.consul_keys.dns.var.dns_zone}"
  name    = "${var.service_name}-${var.env}-${var.service_version}-${count.index}.${data.consul_keys.dns.var.dns_name}"
  type    = "A"
  ttl     = "300"
  records = ["${element(module.aws.instance_ips, count.index)}"]
}