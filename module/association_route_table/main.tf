resource "aws_route_table_association" "shashank_public1_rtassociation" {
     subnet_id      = var.public_subnet_1
  route_table_id = var.skr_public_rt_id
  
}
resource "aws_route_table_association" "shashank_public2_rtassociation" {
     subnet_id      = var.public_subnet_2
  route_table_id = var.skr_public_rt_id
  
}

resource "aws_route_table_association" "shashank_private1_rtassociation" {
     subnet_id      = var.private_subnet_1
  route_table_id = var.skr_private_rt_id
  
}

resource "aws_route_table_association" "shashank_private2_rtassociation" {
  subnet_id = var.private_subnet_2
  route_table_id = var.skr_private_rt_id
  
}