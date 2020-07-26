output "aws_ec2_id" {
  description = "List of IDs of instances"
  value       = aws_instance.ec2.id
}

output "aws_ec2_arn" {
  description = "List of ARNs of instances"
  value       = aws_instance.ec2.arn
}
