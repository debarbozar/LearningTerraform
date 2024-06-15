#Creat a S3 
resource "aws_s3_bucket" "mytsbucket" {
  bucket = "local-state-db"

}