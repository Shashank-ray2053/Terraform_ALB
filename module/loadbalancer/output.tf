
  output "load_balancer_dns_name" {
  value = aws_lb.skr_aws_alb.dns_name
  description = "The DNS name of the load balancer"
}
