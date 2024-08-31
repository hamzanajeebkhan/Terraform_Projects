# variables.tf
variable "ami" {
  type    = string
  default = "ami-08d70e59c07c61a3a"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

#variable "sandboxes" {
#  type    = list(string)
#  default = ["sandbox_one", "sandbox_two", "sandbox_three", "sandbox_four"]
#}

variable "sandboxes" {
  type = map(object({
    instance_type = string,
    tags          = map(string)
  }))
  default = {
    sandbox_one = {
      instance_type = "t2.small"
      tags = {
        Name = "sandbox_one"
      }
    },
    sandbox_two = {
      instance_type = "t2.micro"
      tags = {
        Name = "sandbox_two"
      }
    },
    sandbox_three = {
      instance_type = "t2.nano"
      tags = {
        Name = "sandbox_three"
      }
    },
  }
}