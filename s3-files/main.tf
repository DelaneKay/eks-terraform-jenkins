module "remote_state" {
  source = "nozaq/remote-state-s3-backend/aws"

  override_s3_bucket_name              = true
  dynamodb_deletion_protection_enabled = false

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}