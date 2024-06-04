output "public_subnet_1" {
    value = aws_subnet.skr_public_subnet_1.id
}
output "public_subnet_2" {
    value = aws_subnet.skr_public_subnet_2.id
}

output "private_subnet_1" {
  value = aws_subnet.skr_private_subnet_1.id
}

output "private_subnet_2" {
    value = aws_subnet.skr_private_subnet_2.id
  
}