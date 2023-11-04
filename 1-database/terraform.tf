terraform {
    backend "s3" {
    #Modificar este bucket
    bucket = "teraform-backend-sandbox-107"
    key    = "sandbox2/database/terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = ""
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}