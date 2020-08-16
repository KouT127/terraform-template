// example create s3
resource "aws_s3_bucket" "bucket" {
  bucket = "sample-bucket-123123123"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}