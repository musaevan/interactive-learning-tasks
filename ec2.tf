resource "aws_instance" "web" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t3.micro"
  count = 3
  availability_zone = "us-east-1a"
  associate_public_ip_address = true
  monitoring = true
  key_name = aws_key_pair.key.key_name
  user_data  =  file("user_data.sh")
  tags = {
      Name   = "Wordpress  ${count.index +1}"
      Team   = "DevOps"
      Environment = "Dev"
  }
}