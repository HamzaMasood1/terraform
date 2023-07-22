## S3 bucket public access block Resource ##

resource "aws_s3_bucket_public_access_block" "dock" {
  bucket                  = var.bucket_id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}

data "null_data_source" "dependency" {
inputs = {
    bucket_id = "var.bucket_id"
  }
depends_on = [aws_s3_bucket_public_access_block.dock]
}

