resource "aws_route_table" "prt" {
  vpc_id = "${aws_vpc.terraform-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }


  tags = {
    Name = "terraform-rt"
  }
}

resource "aws_route_table_association" "subnetassocaittion" {
  count = "${length(data.aws_availability_zones.azs.names)}"
  subnet_id      = "${aws_subnet.public.*.id[count.index]}"
  route_table_id = "${aws_route_table.prt.id}"
}
