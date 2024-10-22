variable "region" {
  type = string
  default = "us-west-2"

}

variable "availability_zone" {
  type = string
  default = "us-east-2a"
}

variable "instanceCount" {
  type = number
  default = 1
}

variable "ami" {
  type = string
  default = "ami-050cd642fd83388e4"
}

variable "instance_size" {
  type = string
  default = "t2.micro"
}

variable "port" {
  type = list
  default = [22,80,443]
}


variable "key_name" {
  type = string
  default = "Bastion-key"
}