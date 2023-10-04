terraform {
  backend "s3" {
    bucket         = "asgn-terraform-backend-s3"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "asgn-terraform-backend-dynamodb"
  }
}
