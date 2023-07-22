## S3 Bucket Outputs ##

output "s3_bucket_arn" {
  description = "The private secure s3 bucket arn "
  value       = aws_s3_bucket.dock.arn
}

output "s3_bucket_id" {
  description = "The private secure s3 bucket id "
  value       = aws_s3_bucket.dock.id
}