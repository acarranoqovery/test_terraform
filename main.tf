provider "aws" {
  region = "us-east-2"
}
#terraform {
#   backend "s3" {
#     key            = "global/s3/terraform.tfstate"
#   }
# }

# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "alessandro-test-s3"

#   # Prevent accidental deletion of this S3 bucket
#   lifecycle {
#     prevent_destroy = true
#   }
# }


# resource "aws_s3_bucket_versioning" "enabled" {
#   bucket = aws_s3_bucket.terraform_state.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_dynamodb_table" "terraform_locks" {
#   name         = "alessandro-test-dynamo"
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
#}



 resource "aws_s3_bucket" "my_s3" {
   bucket = var.s3_bucket_name
 }

output "s3_bucket_name" {
  value = aws_s3_bucket.my_s3.bucket
  sensitive = true
}
