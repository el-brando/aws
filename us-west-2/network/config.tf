terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "el-brando"

    workspaces {
      name = "aws-us-west-2-network"
    }
  }
}