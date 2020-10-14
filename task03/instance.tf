resource "huaweicloud_compute_instance_v2" "ecs_example" {
    availability_zone = "cn-north-4a"
    name = "create_ecs"
    image_id = "01225754-3b48-47e4-8611-13663117b886"
    flavor_name = "kc1.large.2"

    network {
    	uuid = huaweicloud_vpc_subnet_v1.subnet_v1.id
    }
}