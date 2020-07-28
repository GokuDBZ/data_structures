
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

resource "aws_s3_bucket" "demo_srj" {
  bucket = "demo.srj"
  acl    = "private"
  region = "us-east-1"

  tags = {
    Name        = "Demo SRJ"
  }
}