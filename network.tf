resource "aws_security_group" "allow_ssh" {
  name        = "nsg-allow-ssh"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "nsg-allow-ssh"
    managed = "Terraform"
  }
}
