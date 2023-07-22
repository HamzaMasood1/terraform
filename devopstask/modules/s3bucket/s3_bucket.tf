## S3 bucket creation Resource ##

resource "aws_s3_bucket" "dock" {
  bucket        = var.bucket_name
  region        = var.region
  force_destroy = true
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_target_key_id
        sse_algorithm     = var.sse_algorithm
      }
    }
  }
}


