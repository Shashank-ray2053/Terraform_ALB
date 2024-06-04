output "security_group_id" {
    value = aws_security_group.shashank_sg.id
  
}

output "db_security_group_id" {
    value = aws_security_group.shashank_db_sg.id
  
}