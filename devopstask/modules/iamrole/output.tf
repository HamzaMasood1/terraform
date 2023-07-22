## IAM Ec2 Role Outputs ##

output "ec2_role_id" {
  description = "ec2 role id"
  value       = aws_iam_role.dock_role.id
}

output "ec2_role_arn" {
  description = "ec2 role arn"
  value       = aws_iam_role.dock_role.arn
}

output "ec2_role_name" {
  description = "ec2 role arn"
  value       = aws_iam_role.dock_role.name
}