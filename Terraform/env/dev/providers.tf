provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = var.common_tags
  }
}  