resource "aws_instance" "terraform-ec2" {
  ami               = var.ami
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  key_name          = var.key_name
  vpc_security_group_ids = [aws_security_group.sg-hello-world.id]
  user_data         = <<-EOF
                #! /bin/bash
                sudo yum update
                sudo yum install -y httpd
                sudo systemctl start httpd
                sudo systemctl enable httpd
                echo "
<h1>Hello World \O/</h1>

" | sudo tee /var/www/html/index.html
        EOF
  tags = {
    Name = "hello_world-valcann"
  }
}