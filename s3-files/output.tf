output "dynamodb_table" {
  value = dynamodb_table.id
}

output "bucket_name" {
  value = state_bucket.bucket
}

output "kms_key" {
  value = kms_key.id
}
