terraform {
  backend "s3" {
    bucket = "framedrop-infra-3"
    key    = "terraform/infra/database/state.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
