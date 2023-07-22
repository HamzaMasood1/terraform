## KMS Key Alias Resource ##

resource "aws_kms_alias" "key_alias" {
  name          = "alias/${var.kms_alias_name}"
  target_key_id = var.kms_target_key_id
}

