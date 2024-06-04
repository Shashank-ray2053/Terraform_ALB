resource "aws_internet_gateway" "shashank_internet_gateway" {
    vpc_id = var.vpc_id
    
    tags = {
      Name = "shashank_Internet_gateway"
    }
  
}