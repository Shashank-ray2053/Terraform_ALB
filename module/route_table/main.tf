resource "aws_route_table" "shashank_public_subnet" {
    vpc_id = var.vpc_id
  
        tags = {
            Name = "shashank_public_rt"
        }

route {

    gateway_id=var.skr_ig_id
    cidr_block = var.all_traffic
}
}

resource "aws_route_table" "shashank_private_subnet" {
    vpc_id = var.vpc_id
  
        tags = {
            Name = "shashank_private_rt"
        }
        
}

