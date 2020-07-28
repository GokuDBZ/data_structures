
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4JRHLZCVM636PP5P"
  secret_key = "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"

}

terraform {
  backend "s3" {
    bucket = "demo.zubbi"
    key    = "app/dev/terraform.tfstate"
    region = "us-west-2"
  }
}

resource "aws_s3_bucket" "demo" {
  bucket = "demo.srj"
  acl    = "private"

  tags = {
    Name        = "Demo SRJ"
  }
}