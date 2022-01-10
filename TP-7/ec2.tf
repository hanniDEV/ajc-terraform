resource "aws_instance" "frazer-ec2" {
  ami             = data.aws_ami.my-ami.id
  instance_type   = data.local_file.file1.content
  security_groups = ["${aws_security_group.my_sg.name}","frazer-sg-web"]
  tags = {
    Name = "${var.admin}-ec2"
    iac  = "terraform"
  }
}

data "aws_ami" "my-ami" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal*"]
  }
}
resource "aws_eip" "my_eip" {
  vpc      = true
  instance = aws_instance.frazer-ec2.id
}

data "local_file" "file1" {
  filename = "/Users/sadofrazer/Données/DevOps/TERRAFORM/terraform_training/AJC/TP-7/infos.txt"
}

resource "aws_security_group" "my_sg" {
  name        = "${var.admin}-sg"
  description = "Allow  inbound traffic with ports 80 & 443"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.admin}-sg"
  }
}
