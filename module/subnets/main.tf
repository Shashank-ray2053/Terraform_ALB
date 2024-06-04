resource "aws_subnet" "skr_public_subnet_1" {
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_1
    availability_zone = var.az_1
    

    tags = {
        Name = "Shashank_public_subnet_1"
    }
}

resource "aws_subnet" "skr_public_subnet_2" {
    vpc_id = var.vpc_id
    cidr_block = var.public_subnet_2
    availability_zone = var.az_2
    

    tags = {
        Name = "Shashank_public_subnet_2"
    }
}


resource "aws_subnet" "skr_private_subnet_1" {
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_1
    availability_zone = var.az_1
    

    tags = {
        Name = "Shashank_private_subnet_1"
    }
}
resource "aws_subnet" "skr_private_subnet_2" {
    vpc_id = var.vpc_id
    cidr_block = var.private_subnet_2
    availability_zone = var.az_2
    

    tags = {
        Name = "Shashank_private_subnet_2"
    }
}


