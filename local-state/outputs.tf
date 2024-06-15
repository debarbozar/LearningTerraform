output "bucket_id" {
  description = "ID bucket"
  value       =  aws_s3_bucket.mytsbucket.id
}

output "bucket_arn" {
  description = "ARN bucket"
  value       =  aws_s3_bucket.mytsbucket.arn
}