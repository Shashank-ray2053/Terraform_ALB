variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_1" {
    description = "public subnet 1"
    type = string
    default = "10.0.0.0/24"
}

variable "public_subnet_2" {
    description = "public subnet 2"
    type = string
    default = "10.0.2.0/24"
}

variable "private_subnet_1" {
    description = "private subnet 1"
    type = string
    default = "10.0.3.0/24"
}



variable "private_subnet_2" {
    description = "private subnet 2"
    type = string
    default = "10.0.4.0/24"
}
variable "az_1" {
  description = "Availiability zone 1"
  type = string
  default = "us-east-1a"
}
variable "az_2" {
  description = "Availiability zone 2"
  type = string
  default = "us-east-1b"
}
variable "all_traffic" {
    description = "allow all traffic"
    type = string
    default = "0.0.0.0/0"
  
}
variable "ami" {
    description = "ubuntu ami"
    default = "ami-04b70fa74e45c3917"
  
}

variable "instance_type" {
    description = "instance type of ubuntu ami"
    default = "t2.micro"
  
}

variable "key_name" {
    description = "key pair for ubuntu ami"
    default = "sas"
  
}

