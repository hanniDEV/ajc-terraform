resource "aws_instance" "frazer-ec2" {
  ami             = "${var.ami_name}"
  key_name        = "${var.key_name}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${var.sg_name}"]
  tags = {
    Name = "ec2-${var.env}-${var.admin}"
    iac  = "terraform"
  }
}

resource "aws_eip" "my_eip" {
  vpc      = true
  instance = aws_instance.frazer-ec2.id
}

