output "dns" {
    value = "${aws_route53_record.proxy_service.fqdn}"
}