terraform {
  backend "local" {
    path = "../../states/ec2/terraform.tfstate"
 }
}