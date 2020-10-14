# task4/main.tf
module "create_vpc" {
    source = "./vpc"
    vpc_name = "create_test"
}