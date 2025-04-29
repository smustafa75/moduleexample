# Generate random id
resource "random_id" "tf_bucket_id" {
  byte_length = 2
}

# Create S3 bucket
resource "aws_s3_bucket" "tf_code_bucket" {
  bucket        = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  force_destroy = true

  tags = {
    Name = "S3-Demo-Module"
  }
}

# Set bucket ACL
resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.tf_code_bucket.id
  acl    = "private"
}
