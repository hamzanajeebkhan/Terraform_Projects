output "ami_id" {
  description = "AMI ID of Ec2 instance"
  value       = aws_instance.web.ami
}