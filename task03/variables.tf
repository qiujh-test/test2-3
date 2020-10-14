variable "flavor_name" {
    default = "kc1.large.2"
    description = "Define the flavor name that will be used to create instance"
}

variable "instance_name" {
    default = "test_ecs"
    description = "The name of the instance"
}

variable "vpc_name" {
  default = "huaweicloud_vpc"
  description = "The name of the vpc"
}

variable "vpc_cidr" {
    default = "192.168.0.0/16"
    description = "The network ip range of the network"
}

variable "subnet_gateway_ip"{
    default = "192.168.0.182"
}

variable "az" {
    default = "cn-north-4a"
    description = "The availability zone name where the resource will be created"
}

variable "region" {
    default = "cn-north-4"
    description = "The region name where the resource will be created"
}

# 若选择不同区域，需要切换不同的image id,此处region为北京四
variable "image" {
	default = "01225754-3b48-47e4-8611-13663117b886"
}