terraform {
  backend "s3" {
    bucket         = "dobosh-terraform"
    key            = "Cloud_tech/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "statelock"
  }
}