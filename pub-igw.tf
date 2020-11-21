resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.terraform-vpc.id}"

  tags = {
    Name = "pub-igw"
  }
}
