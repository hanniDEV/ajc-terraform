variable "instance_type" {
  default = "t2.small"
}

variable "ami_name" {
  default = "ami-04505e74c0741db8d"
}

variable "key_name" {
  default = ""
}

variable "sg_name" {
  default = "frazer-sg-web"
  type = string
}

variable "env" {
  default = ""
  type = string
}

variable "admin" {
  default = "frazer"
}