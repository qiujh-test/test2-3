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