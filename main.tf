provider "aws" {
  region = "us-west-1"  # Change to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "git/tf-bucket-#0"  # Change this to a globally unique name

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
