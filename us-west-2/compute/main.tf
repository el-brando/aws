provider "aws" {
  region = "us-west-2"
}

module "config" {
  source = "./config"
}