resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr_block
  tags       = { Name = var.basename }
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.example.id
  cidr_block = var.subnet_cidr_block
}