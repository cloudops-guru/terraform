resource "aws_instance" "MyTest" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = var.security_groups
  tags = var.tags
  root_block_device  {
      volume_type = var.volume_type
      volume_size = var.volume
  }
}
