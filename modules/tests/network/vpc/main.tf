# unit test for private VPC module

module "test_vpc" {
    source = "../../../private/network/vpc"

    cidr_block = "10.0.0.0/16"
    vpc_name = "test_vpc"
}