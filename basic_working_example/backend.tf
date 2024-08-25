terraform {
  backend "s3"{
    bucket                 = "infotics-terraform-work"
    region                 = "us-east-1"
    key                    = "backend.tfstate"
    dynamodb_table         = "infotics-terraform-work"
  }
}