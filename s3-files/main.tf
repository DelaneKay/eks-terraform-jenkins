module "remote_state" {
  source = "nozaq/remote-state-s3-backend/aws"

  override_s3_bucket_name = true
  s3_bucket_name = "jenkins-bucket"
  s3_bucket_name_replica  = "jenkins-bucket-replica"
  dynamodb_deletion_protection_enabled = false

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
}