
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4JRHLZCVM636PP5P"
  secret_key = "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"

}

# terraform {
#   backend "s3" {
#     bucket = "demo.zubbi"
#     key    = "app/dev/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

resource "aws_s3_bucket" "demo" {
  bucket = "demo.srj"
  acl    = "private"

  tags = {
    Name        = "Demo SRJ"
  }
}