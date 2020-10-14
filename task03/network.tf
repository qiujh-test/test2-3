# vpc资源
resource "huaweicloud_vpc_v1" "vpc_v1" {
  name = var.vpc_name
  cidr = "192.168.0.0/16"
}

resource "huaweicloud_vpc_subnet_v1" "subnet_v1" {
  name = "my_subnet"
  cidr = "192.168.0.0/16"
  gateway_ip = "192.168.0.182"
  vpc_id = huaweicloud_vpc_v1.vpc_v1.id
}

resource "huaweicloud_vpc_bandwidth_v2" "bandwidth_1" {
  name = "bandwidth_huawei"
  size = 5
}

resource "huaweicloud_vpc_eip_v1" "eip_1" {
  publicip {
    type = "5_bgp"
  }
  bandwidth {
    id = huaweicloud_vpc_bandwidth_v2.bandwidth_1.id
    share_type  = "PER"
    charge_mode = "traffic"
  }
}

resource "huaweicloud_compute_eip_associate" "associate_1" {
  public_ip   = huaweicloud_vpc_eip_v1.eip_1.address
  instance_id = huaweicloud_compute_instance_v2.ecs_example.id #绑定服务器id
}