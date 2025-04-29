output "bucketname" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.tf_code_bucket.id
}
