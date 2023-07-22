## S3 Bucket Modules ##

module "s3_bucket" {
  source                  = "./modules/s3bucket"
  bucket_name             = var.bucket_name
  region                  = var.region
  kms_target_key_id       = module.kms_key.key_id
  sse_algorithm           = "aws:kms"
}

module "s3_access" {
  source                  = "./modules/s3access"
  bucket_id               = module.s3_bucket.s3_bucket_id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

module "s3_bucket_policy" {
  source                  = "./modules/s3policy"
  bucket_id               = module.s3_bucket.s3_bucket_id
  policy                  = module.templates.s3_bucket_policy
  ec2_role_arn            = module.iam_ec2_role.ec2_role_arn
  s3_bkt_arn              = module.s3_bucket.s3_bucket_arn
  kms_key_arn             = module.kms_key.key_arn
  depends                 = [module.s3_access.s3_access_dep]
}

