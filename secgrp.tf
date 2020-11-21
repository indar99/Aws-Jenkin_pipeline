resource "aws_security_group" "secgrp" {
  name        = "secgrp"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.terraform-vpc.id}"

  ingress {
    description = "open ssh port"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "open http port"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "secgrp"
  }
}
