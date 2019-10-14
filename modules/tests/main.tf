# test network modules
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
    source = "./network/vpc"
}