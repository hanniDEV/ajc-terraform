module "ec2-prod" {
  source = "../modules/ec2"
  sg_name = "frazer-sg-k8s"
  env = "prod"
  admin = "frazer"
  ami_name = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name = "frazer-kp-ajc1"
}

module "ec2-prod2" {
  source = "../modules/ec2"
  sg_name = "frazer-sg-k8s"
  env = "prod2"
  admin = "frazer"
  ami_name = "ami-04505e74c0741db8d"
  instance_type = "t2.medium"
  key_name = "frazer-kp-ajc1"
}