resource "aws_security_group" "allow_http_icmp_ssh" {
  name        = "allow_http_icmp_ssh_grupo_3"
  description = "Permite HTTP, ICMP y SSH"
  vpc_id      = var.vpc1_id

  ingress {
    description = "SSH from Anywere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ICMP from Anywere"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from Anywere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Grupo 3 - HTTP,Ping y SSH"
  }
}