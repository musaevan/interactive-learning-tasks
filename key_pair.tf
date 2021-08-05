resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = file("~/.ssh/id_rsa.pub")
  tags = {
      Name = "Wordpress"
      CreatedBy = "Engineer"
      Team = "DevOps"
  }
}
