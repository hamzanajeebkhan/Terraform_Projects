 data "terraform_remote_state" "remote" {
   backend = "s3"
     config = {
     bucket = "tf-awesome-backend"
     key = "workspaces/production/terraform.tfstate"
     region = "us-west-2"
     }
 }

 resource "aws_instance" "example" {
    ami = data.terraform_remote_instance.remote.outputs.ami_id
    instance_type
 }