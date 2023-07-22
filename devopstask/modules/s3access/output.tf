## S3 Bucket Outputs ##
output "s3_access_dep" {
  description = "dependency for policy"
  value       = "${data.null_data_source.dependency.outputs["bucket_id"]}"
}
