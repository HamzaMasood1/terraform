### IAM policy Resource ##

data "template_file" "policy" {
  template       = file("${var.policy}")
  vars = {
    s3_bkt_arn   = var.s3_bkt_arn
    kms_key_arn  = var.kms_key_arn
  }
}

resource "aws_iam_role_policy" "iam_ec2_policy" {
  name       = var.ec2_iam_policy_name
  role       = var.role
  policy     = data.template_file.policy.rendered
}

