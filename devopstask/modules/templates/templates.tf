
output "kms_policy" {
  description = "KMS policy file path to input for policy creation"
  value = "${path.module}/policies/kms_policy.json.tpl"
}

output "iam_role_assume_policy" {
  description = "IAM assume role policy file path to input for policy creation"
  value = "${path.module}/policies/assume_role_ec2_policy.json.tpl"
}

output "iam_role_ec2_policy" {
  description = "IAM ec2 role policy file path to input for policy creation "
  value = "${path.module}/policies/iam_ec2_role_policy.json.tpl"
}


output "s3_bucket_policy" {
  description = "s3 bucket policy file path to input for policy creation"
  value = "${path.module}/policies/s3_policy.json.tpl"
}

output "ec2_user_data" {
  description = "ec2 user data script"
  value = "${path.module}/userscripts/server_script.sh.tpl"
}