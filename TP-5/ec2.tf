resource "aws_instance" "frazer-ec2" {
  ami           = var.ami_name
  instance_type = var.instance_type
  tags = {
    Name = "ec2-frazer"
    iac  = "terraform"
  }
}

resource "local_file" "file1" {
    filename = "/Users/sadofrazer/Données/DevOps/TERRAFORM/terraform_training/AJC/TP-5/ec2_paramters.txt"
    content = "Les paramètres de notre ec2 sont : Le type d'instance ${aws_instance.frazer-ec2.instance_type} et l'image ${aws_instance.frazer-ec2.ami}"
}

resource "aws_eip" "lb" {
  instance = aws_instance.frazer-ec2.id
  vpc      = true
}