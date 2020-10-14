# task4/main.tf

module "test" {
  source = "./vpc"

  # VPC
  name = "testVPC"
  cidr = "10.0.0.0/16"

  # Subnet
  subnets = [
    {
      name       = "testSubnet-1"
      cidr       = "10.0.1.0/24"
      gateway_ip = "10.0.1.1"
    },
    {
      name       = "testSubnet-2"
      cidr       = "10.0.2.0/24"
      gateway_ip = "10.0.2.1"
      availability_zone = "ap-southeast-1a"
    },
    {
      name       = "tetSubnet-3"
      cidr       = "10.0.3.0/24"
      gateway_ip = "10.0.3.1"
      primary_dns = "100.125.1.250"
      secondary_dns = "100.125.3.250"
    },
  ]
}