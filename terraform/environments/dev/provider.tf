terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.84.0"
    }
  }
  required_version = " = 1.7.5"    
}

provider "aws" {
  region = "ap-northeast-1"
}