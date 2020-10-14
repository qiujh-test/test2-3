resource "huaweicloud_networking_secgroup_v2" "sg_example" {
  name        = "sg_test"
  description = "security group for test"
}

resource "huaweicloud_networking_secgroup_rule_v2" "sg_rule_ftp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "192.168.0.0/16"
  security_group_id = huaweicloud_networking_secgroup_v2.sg_example.id
}

resource "huaweicloud_networking_secgroup_rule_v2" "sg_rule_http" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "192.168.0.0/16"
  security_group_id = huaweicloud_networking_secgroup_v2.sg_example.id
}