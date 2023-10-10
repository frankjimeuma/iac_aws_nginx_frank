
resource "aws_instance" "frank_instance" {
  ami           = "ami-053b0d53c279acc90"  # ubuntu AMI
  instance_type = "t3.micro"
  key_name = aws_key_pair.frank_kp.key_name
  subnet_id = aws_subnet.subnet_frank_public.id
  vpc_security_group_ids = [aws_security_group.security_group04.id]

  tags = {
    Name = "PublicInstance"
  }
}

