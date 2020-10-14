# task4/vpc/output.tf
output "vpc_id" {
    value = huaweicloud_vpc_v1.router.id
}