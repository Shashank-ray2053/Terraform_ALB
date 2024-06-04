resource "aws_lb" "skr_aws_alb" {
  name               = "skr-aws-alb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group_id]
  subnets            = [var.public_subnet_1, var.public_subnet_2]

  enable_deletion_protection = false

  # access_logs {
  #   bucket  = aws_s3_bucket.lb_logs.id
  #   prefix  = "test-lb"
  #   enabled = true
  # }

  tags = {
    Environment = "development"
  }
}

resource "aws_lb_target_group" "skr_aws_alb_target_group" {
  name     = "skr-aws-alb-tg-tf"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  tags = {
    Name = "shashank-aws-alb-tg-tf"
    terraform = "true"
    owner = "shashank.ray"
    environment = "dev"
  }
}

resource "aws_lb_listener" "skr_aws_lb_listener" {
  load_balancer_arn = aws_lb.skr_aws_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.skr_aws_alb_target_group.arn
  }
}

resource "aws_lb_target_group_attachment" "skr_aws_lb_target_group_attachment_1" {
  target_group_arn = aws_lb_target_group.skr_aws_alb_target_group.arn
  target_id        = var.skr_ubuntu_1
  port             = 80
}

resource "aws_lb_target_group_attachment" "skr_aws_lb_target_group_attachment_2" {
  target_group_arn = aws_lb_target_group.skr_aws_alb_target_group.arn
  target_id        = var.skr_ubuntu_2
  port             = 80
}