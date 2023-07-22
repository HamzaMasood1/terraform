## S3 bucket bolicy resource creation ##

data "template_file" "policy" {
  template = file("${var.policy}")
  vars = {
    s3_bkt_arn   = var.s3_bkt_arn
    kms_key_arn  = var.kms_key_arn
    ec2_role_arn = var.ec2_role_arn
  }
}

resource "aws_s3_bucket_policy" "dock" {
  bucket     = var.bucket_id
  policy     = data.template_file.policy.rendered
  depends_on = [var.depends]
}

