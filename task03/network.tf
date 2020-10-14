# vpc资源
resource "huaweicloud_vpc_v1" "vpc_v1" {
    name = "885bd72d-f1da-4948-90a7-baa459e4e916"
    cidr = "192.168.0.0/16"
}

# subnet资源
resource "huaweicloud_vpc_subnet_v1" "subnet_v1" {
    name = "5628e239-4c5f-403c-8fe2-24e94ae085df"
    cidr = "192.168.0.0/16"
    gateway_ip = "192.168.0.182"
    vpc_id = huaweicloud_vpc_v1.vpc_v1.id
}