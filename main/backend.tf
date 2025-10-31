terraform {
  backend "s3" {
    bucket         = "khushal-terraform-state-bucket"
    key            = "ec2-s3-static-website/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
