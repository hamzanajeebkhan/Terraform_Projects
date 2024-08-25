# provider.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }
 
  backend "s3" {
    bucket                  = "tf-awesome-backend"
    key                     = "terraform.tfstate"
    workspace_key_prefix    = "workspaces"
    region                  = "us-west-2"
  }
}

provider "aws" {
    region = var.default_region
}