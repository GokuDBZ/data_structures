
provider "aws" {
  region     = "us-west-2"
}

resource "aws_s3_bucket" "demo" {
  bucket = "demo.suraj"
  acl    = "private"

  tags = {
    Name        = "Demo SRJ"
  }
}