resource "huaweicloud_compute_instance_v2" "ecs_example" {
  region = var.region
  availability_zone = var.az
  name            = var.instance_name
  image_id      = var.image
  flavor_name     = var.flavor_name
  security_groups = ["default"]

  network {
	  uuid = huaweicloud_vpc_subnet_v1.subnet_v1.id
  }
}