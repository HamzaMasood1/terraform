output "kms_key_alias_arn_value" {
  description = "The arn of the key alias"
  value       = module.kms_alias.key_alias_arn
}

output "kms_key_alias_arn_name" {
  description = "The arn of the key alias"
  value       = module.kms_alias.key_alias_name
}

output "kms_key_id_value" {
  description = "The arn of the key alias"
  value       = module.kms_key.key_id
}

output "kms_key_arn_value" {
  description = "The arn of the key alias"
  value       = module.kms_key.key_arn
}

output "ec2_role_id_output1" {
  description = "ec2 role id"
  value       = module.iam_ec2_role.ec2_role_id
}

output "ec2_role_arn_output1" {
  description = "ec2 role arn"
  value       = module.iam_ec2_role.ec2_role_arn
}

output "ec2_role_name_output1" {
  description = "ec2 role arn"
  value       = module.iam_ec2_role.ec2_role_name
}

output "ec2_instance_profile_output1" {
  description = "ec2 instance profile name"
  value       = module.iam_ec2_profile.ec2_instance_profile
}

output "s3_bucket_arn_output1" {
  description = "The private secure s3 bucket arn "
  value       = module.s3_bucket.s3_bucket_arn
}

output "s3_bucket_id_output1" {
  description = "The private secure s3 bucket id "
  value       = module.s3_bucket.s3_bucket_id
}

output "aws_account_id_output1" {
  description = "AWS_Account_id"
  value       = module.caller_id.aws_account_id
}

output "aws_account_arn_output1" {
  description = "AWS_Account_arn"
  value       = module.caller_id.aws_account_arn
}

output "aws_account_caller_user_output1" {
  description = "ec2 role arn"
  value       = module.caller_id.aws_account_caller_user
}

output "security_group_id_output1" {
  description = "The ec2 instance security group id "
  value       = module.sg.security_group_id
}

output "ec2_public_ip_output1" {
  description = "The ec2 public ip "
  value       = module.instance.ec2_public_ip
}

output "ec2_instance_id_output1" {
  description = "The ec2 instance id "
  value       = module.instance.ec2_instance_id
}