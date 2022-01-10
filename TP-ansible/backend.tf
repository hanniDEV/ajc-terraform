terraform {
  backend "s3" {
    bucket                  = "codedeploy-s3-frazer"
    key                     = "wordpress.tfstate"
    region                  = "us-east-1"
    shared_credentials_file = "/Users/sadofrazer/Données/DevOps/AWS/.aws/credentials"
  }
}