resource "aws_subnet" "public-subnets" {
  count             = length(var.public-cidrs)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public-cidrs, count.index)
  availability_zone = element(var.azs, count.index)
  tags = {
    Name = "${aws_vpc.default.tags.Name}-Public-Subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private-subnets" {
  count             = length(var.private-cidrs)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.private-cidrs, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name = "${aws_vpc.default.tags.Name}-Private-Subnet-${count.index + 1}"
  }
}