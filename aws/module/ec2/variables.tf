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

variable "name" { 
  type        = string
  default     = "Web Server"
} 

variable "vpc" { 
  type        = bool
  default     = true
}
 
variable "instance" {
  description = "EC2 instance ID"
  type        = string 
  default     = null
}

variable "network_interface" {
  description = "Network interface ID to associate with"
  type        = string
  default     = "eth0"
}

variable "associate_with_private_ip" {
  description = "A user specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address."
  type        = string
  default     = null
} 

variable "public_ipv4_pool" {
  description = "EC2 IPv4 address pool identifier or amazon. This option is only available for VPC EIPs."
  type        = string
  default     = null
}