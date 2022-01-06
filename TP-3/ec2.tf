resource "aws_instance" "frazer-ec2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "frazer-kp-ajc1"
  tags = {
    Name = "ec2-frazer"
    iac = "terraform"
  }
}