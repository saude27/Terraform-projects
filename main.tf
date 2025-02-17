# configure aws provider
provider "aws" {
  region = "eu-west-2"
  profile = "saude"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "saudat-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-2"
    profile = "saude"
  }
}
