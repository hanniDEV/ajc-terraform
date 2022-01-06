resource "aws_instance" "frazer-ec2" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name      = "frazer-kp-ajc1"
  tags = {
    Name = "ec2-frazer"
    iac  = "terraform"
  }
}
