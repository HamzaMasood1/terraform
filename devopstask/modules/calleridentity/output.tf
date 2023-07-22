## AWS account Caller ID ##

output "aws_account_id" {
  description = "AWS_Account_id"
  value       = data.aws_caller_identity.current_account.account_id
}

output "aws_account_arn" {
  description = "AWS_Account_arn"
  value       = data.aws_caller_identity.current_account.arn
}

output "aws_account_caller_user" {
  description = "ec2 role arn"
  value       = data.aws_caller_identity.current_account.user_id
}