resource "aws_instance" "shashank_ubuntu" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [var.security_group_id]
    subnet_id = var.public_subnet_1
    associate_public_ip_address = true
    

    tags = {
        Name = "shahsank_ubuntu"
    }

  
}

resource "aws_instance" "shashank_ubuntu_1" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [var.security_group_id]
    subnet_id = var.public_subnet_2
    associate_public_ip_address = true
    

    tags = {
        Name = "shahsank_ubuntu_1"
    }

  
}