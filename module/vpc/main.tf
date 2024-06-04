resource "aws_vpc" "shashank_vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "Shashank_vpc"
        silo = "Intern-2"
        owner = "shashank.ray"
        environment = "Dev"
        terraform = "true"
    }
}