terraform {
    backend "s3" {
        bucket = "infoticsinstitute-terraform-project-bucket"
        region = "us-west-2"
        key    = "backend.tfstate"
        dynamodb_table = "infoticsinstitute-terraform-project-dynamodb"
    }
}