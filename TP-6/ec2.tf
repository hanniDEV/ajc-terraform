resource "aws_instance" "frazer-ec2" {
  ami           = var.ami_name
  instance_type = data.local_file.file1.content
  tags = {
    Name = "ec2-frazer"
    iac  = "terraform"
  }
}

data "local_file" "file1" {
    filename = "/Users/sadofrazer/Données/DevOps/TERRAFORM/terraform_training/AJC/TP-6/infos.txt"
}

