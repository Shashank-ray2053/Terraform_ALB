resource "aws_security_group" "shashank_sg" {
    name = "shashank_sg"
    description = "allow inbound and outbound traffic"
    vpc_id = var.vpc_id

    ingress {
        description = "ssh port opening"
        cidr_blocks =[var.all_traffic]
        from_port = 22
        protocol = "tcp"
        to_port = 22
    }

    ingress{
        description = "http port opening"
        cidr_blocks =[var.all_traffic]
        from_port = 80
        protocol = "tcp"
        to_port = 80
    }
    egress{
    description = "egress for all traffic"
    cidr_blocks = [var.all_traffic]
    from_port = 0
    to_port = 0
    protocol = -1
  }

    tags =  {

    name = "shashank_security_group"
    }

  
}

resource "aws_security_group" "shashank_db_sg" {
    name = "shashank__db_sg"
    description = "security group for databse (MySQL) using terraform"
    vpc_id = var.vpc_id

    ingress {
        description = "RDS port opening to access the databse (3306)"
        cidr_blocks =[var.all_traffic]
        from_port = 3306
        protocol = "tcp"
        to_port = 3306
    }
    egress{
    description = "egress for all traffic"
    cidr_blocks = [var.all_traffic]
    from_port = 0
    to_port = 0
    protocol = -1
  }

    tags =  {

    name = "shashank_db_security_group"
    }

  
}



