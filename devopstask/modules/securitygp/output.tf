## Security Group Outputs ##

output "security_group_id" {
  description = "The ec2 instance security group id "
  value       = aws_security_group.sg.id
}