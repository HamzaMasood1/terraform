module "kms_key" {
  source                  = "./modules/kmskey"
  kms_name                = var.kms_name
  description             = "dock KMS key"
  deletion_window_in_days = 7
  enable_key_rotation     = false
  policy                  = module.templates.kms_policy
  ec2_role_arn            = module.iam_ec2_role.ec2_role_arn
  root_aws_account_id     = module.caller_id.aws_account_id
}

module "kms_alias" {
  source                  = "./modules/kmsalias"
  kms_alias_name          = var.kms_name
  kms_target_key_id       = module.kms_key.key_id
}
