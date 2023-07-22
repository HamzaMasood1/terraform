## KMS Key Outputs ##

output "key_arn" {
  description = "The arn of the KMS key"
  value       = aws_kms_key.key.arn
}

output "key_id" {
  description = "The globally unique identifier for the key"
  value       = aws_kms_key.key.id
}