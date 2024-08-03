resource "aws_instance" "ec2" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.owner.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  instance_market_options {
    market_type = "spot"
    spot_options {
      max_price = 0.02
    }
  }

  tags = {
    managed = "Terraform"
  }
}

resource "aws_key_pair" "owner" {
  key_name   = "owner-key"
  public_key = data.tls_public_key.owner_public_key.public_key_openssh
}
