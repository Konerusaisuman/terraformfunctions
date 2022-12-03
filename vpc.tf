resource "aws_vpc" "default" {
  cidr_block = var.vpc_cidr
  tags = {
    Name  = "${var.vpc_name}"
    Owner = "Sree"
    Env   = "Production"
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = "${var.IGW_name}"
  }
}