resource "aws_instance" "ec2" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  key_name                = var.key_name
  security_groups         = var.security_groups
  tags                    = var.tags
  root_block_device  {
      volume_type         = var.volume_type
      volume_size         = var.volume
  }
}

/*
resource "aws_eip" "eip" {
  vpc                       = var.vpc
  instance                  = "${data.terraform_remote_state.ec2.outputs.aws_ec2_id}"
  network_interface         = var.network_interface
  associate_with_private_ip = var.associate_with_private_ip
  public_ipv4_pool          = var.public_ipv4_pool
  tags                      = merge(var.tags, { "Name" = var.name }) 
  depends_on                = [aws_instance.ec2]

}
*/