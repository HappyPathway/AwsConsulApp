output "dns_nodes" {
    value = "${aws_route53_record.service_nodes.fqdn}"
}

output "dns" {
    value = "${aws_route53_record.service.fqdn}"
}
