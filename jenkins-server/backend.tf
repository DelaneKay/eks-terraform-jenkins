terraform {
  backend "s3" {
    bucket         = module.remote_state.state_bucket.bucket
    key            = "some_environment/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    kms_key_id     = module.remote_state.kms_key.id
    dynamodb_table = module.remote_state.dynamodb_table.id
  }
}