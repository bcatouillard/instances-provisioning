output "ec2_public_ip" {
  value       = "Your EC2 public IP address: ${aws_instance.ec2.public_ip}\nTo connect, please use: ssh -i ${var.private_key_location}.pub ubuntu@${aws_instance.ec2.public_dns}"
  description = "AWS EC2 public IP address"
}
