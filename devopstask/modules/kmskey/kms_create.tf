
data "template_file" "policy" {
  template = file("${var.policy}")
  vars = {
    ec2_role_arn =   var.ec2_role_arn
    account_id   =   var.root_aws_account_id
  }
}

resource "aws_kms_key" "key" {
  description             = var.description 
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = data.template_file.policy.rendered
  tags = {
  "Name"                  = var.kms_name
}
}

