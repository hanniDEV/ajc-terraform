variable "instance_type" {
  default = "t2.small"
}

variable "ami_name" {
  default = "ami-04505e74c0741db8d"
}

variable "port" {
  default = 8080
  type = number
}

variable "admin" {
  default = "frazer"
}