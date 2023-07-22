## Ec2 compute Output ##
output "ec2_public_ip" {
  description = "The ec2 public ip "
  value       = aws_instance.dock.public_ip
}

output "ec2_instance_id" {
  description = "The ec2 instance id "
  value       = aws_instance.dock.id
}