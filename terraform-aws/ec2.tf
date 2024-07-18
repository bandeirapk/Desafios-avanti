resource "aws_instance" "web-server" {
  ami                    = "ami-0a0e5d9c7acc336f1"
  instance_type          = "t2.micro"
  key_name               = "vockey"
  vpc_security_group_ids = [aws_security_group.avanti-bootcamp.id]
  user_data              = file("script.sh")

  tags = {
    Name = "web-server"
  }
}
