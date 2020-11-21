resource "aws_subnet" "public" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  vpc_id     = "${aws_vpc.terraform-vpc.id}"
  cidr_block = "${cidrsubnet(var.vpc_cidr,8,count.index + 1)}"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Main"
  }
}
