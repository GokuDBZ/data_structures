
provider "aws" {
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "demo.zubbi"
    key    = "app/dev/terraform.tfstate"
    region = "us-east-2"
  }
}

resource "aws_s3_bucket" "demo_athioush" {
  bucket = "demo.athioush"
  acl    = "private"
  region = "us-east-1"

  tags = {
    Name        = "athioush"
  }
}