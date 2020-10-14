# task4/vpc/main.tf
resource "huaweicloud_vpc_v1" "router" {
  name = var.vpc_name
  cidr = var.vpc_cidr
}