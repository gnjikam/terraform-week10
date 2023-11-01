terraform {
  backend "s3" {
    bucket         = "gil-s3-bucket"
    key            = "terraform week10/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
