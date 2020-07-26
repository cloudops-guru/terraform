
provider "aws" {
  region = "us-east-1"
}

################################################################################
# State File
################################################################################
terraform {
  backend "local" {
    path = "../../states/eip/terraform.tfstate"
 }
}

################################################################################
# Remote State Data
################################################################################

data "terraform_remote_state" "ec2" {
  backend = "local" 
  config = {
    path = "../../states/ec2/terraform.tfstate"
  }
}
