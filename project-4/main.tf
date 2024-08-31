# main.tf
resource "aws_instance" "sandbox" {
  ami           = var.ami
  for_each      = var.sandboxes
  instance_type = each.value["instance_type"]
  tags          = each.value["tags"]
}