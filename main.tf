provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials" # default
  profile = "default" # you may change to desired profile
  #version = "~> 2.63"
}


terraform {
  backend "s3" {
    bucket = "mydeirectory"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}
