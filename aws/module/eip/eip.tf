 
resource "aws_eip" "eip" {
  vpc                       = var.vpc
  instance                  = "${data.terraform_remote_state.ec2.outputs.aws_ec2_id}"
  network_interface         = var.network_interface
  associate_with_private_ip = var.associate_with_private_ip
  public_ipv4_pool          = var.public_ipv4_pool
  tags                      = merge(var.tags, { "Name" = var.name }) 

}