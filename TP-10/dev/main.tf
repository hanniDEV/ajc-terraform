module "ec2-dev" {
  source = "../modules/ec2"
  sg_name = "frazer-sg-web"
  env = "dev"
  admin = "frazer"
  ami_name = data.aws_ami.my-ami.id
  instance_type = "t2.nano"
  key_name = "frazer-kp-ajc1"
}