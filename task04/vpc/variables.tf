# task4/vpc/variables.tf
variable "vpc_name" {
  default = "huaweicloud_vpc"
  description = "The name of the vpc"
}

variable "vpc_cidr" {
    default = "192.168.0.0/16"
    description = "The network ip range of the network"
}