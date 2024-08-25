output "instance_id" {
    description = "ID of EC2 instance"
    value = aws_instance.hamza.id
}

output "instance_public_ip" {
    description = "Public IP address of EC2 instance"
    value = aws_instance.hamza.public_ip
}