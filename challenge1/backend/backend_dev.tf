# Configure the backend - Terraform state in an S3 bucket
terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-dev"
    key            = "terraform.tfstate" 
    region         = "us-east-1"  
    encrypt        = true
    dynamodb_table = "terraform-lock"  # DynamoDB for state locking
  }
}