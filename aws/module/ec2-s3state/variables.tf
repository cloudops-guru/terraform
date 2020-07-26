variable "ami_id" {
    type = string
    default = "ami-098bb5d92c8886ca1"
}

variable "instance_type" {
    type = string
    default = "t2.medium"
}

variable "key_name" {
    type = string
    default = "cloudops-aws"
}
variable "security_groups" {
    type = list(string)
    default = [ "cloudops-sg" ]
}

variable "tags" {
    default = { 
      "terraform" = "true"
      "env" = "Dev"
      "Name" = "MyFirstServer"
    }
}
variable "volume_type" {
    default = "gp2"
}
variable "volume" {
    default = "100"
}

variable "remote_state_path"{
    default = "dev/ec2/terraform.tfstate"
}
