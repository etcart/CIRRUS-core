terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 5.22.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 2.1"
    }
  }
  backend "s3" {}
}

provider "aws" {
  ignore_tags {
    key_prefixes = ["gsfc-ngap"]
  }
}
