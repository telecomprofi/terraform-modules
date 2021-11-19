resource "aws_lb" "test" {
  name               = "test-nlb-tf"
  internal           = false
  load_balancer_type = "network"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = aws_subnet.public.*.id

  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.nlb_logs.bucket
    prefix  = "test-nlb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}