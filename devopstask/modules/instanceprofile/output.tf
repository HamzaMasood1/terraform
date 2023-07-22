## Ec2 Instance Profile Name Output ##

output "ec2_instance_profile" {
  description = "ec2 instance profile name"
  value       = aws_iam_instance_profile.dock_ec2_profile.name
}