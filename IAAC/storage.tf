##deault one with basic syntax 
/*resource "aws_s3_bucket" "example"{

  bucket = "store-webapp-data"
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}*/
resource "aws_s3_bucket" "bucket" {
  bucket_prefix = "devops-directive-web-app-data"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_crypto_conf" {
  bucket = aws_s3_bucket.bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

#force_destroy =true ---used only for s3 to destroy the content and files of s3 an then the whole bucket 