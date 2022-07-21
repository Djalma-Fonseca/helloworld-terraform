resource "aws_security_group" "sg-hello-world" {

# Porta 22 configurada para acesso via SSH
  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

# Porta 80 configurada para acesso via HTTP
  ingress {
    
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" //any protocol
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}

  tags = {
    Name = "sg-valcann-lab"
  }
}