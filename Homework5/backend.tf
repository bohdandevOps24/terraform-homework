terraform {
  backend "s3" {
    bucket = "my-s3-bucker-homework5"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "backend-table"
  }
}
