resource "aws_instance" "webvm"{
  count = "${var.aws_count}"
  ami           = "${var.aws_ami[var.aws_region]}"
  instance_type = "${var.aws_type}"
  subnet_id = "${aws_subnet.public.*.id[count.index]}"
  user_data = "${file("apache.sh")}"
  security_groups = ["${aws_security_group.secgrp.id}"]
  tags = {
    Name = "HelloWorld"
  }
}
