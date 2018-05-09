

resource "null_resource" "service_config" {
  count = "${var.count}"
  # Changes to any instance of the cluster requires re-provisioning
  triggers {
    cluster_instance_ids = "${join(",", module.aws.instance_ips)}"
  }
  depends_on = [
    "module.aws"
  ]
  # Bootstrap script can run on any instance of the cluster
  # So we just choose the first in this case
  connection {
      type     = "ssh"
      host     = "${element(module.aws.instance_ips, count.index)}"
      user     = "${module.aws.instance_user}"
  }

  provisioner "remote-exec" {
      inline = [
          "rm -rf /tmp/playbooks"
      ]
  }

  provisioner "file" {
    source      =  "${path.module}/playbooks"
    destination = "/tmp/consul_app_playbooks"
  }

  provisioner "remote-exec" {
    inline = [
      "while [ $(top -bn1| grep -q apt; echo $?) == '0' ]; do echo 'apt runing'; sleep 1; done",
      "echo ${var.env} > /tmp/app.env",
      "echo ${var.service_name} > /tmp/app.service",
      "echo ${var.service_version} > /tmp/app.version",
      "bash /tmp/consul_app_playbooks/app_bootstrap.sh"
    ]
  }
}


