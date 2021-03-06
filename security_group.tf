resource "aws_security_group" "example" {
  name = "${var.basename}_sg"
  vpc_id = aws_vpc.example.id
}

resource "aws_security_group_rule" "ingress" {
  type = "ingress"
  from_port = var.sg_port
  to_port = var.sg_port
  protocol = "tcp"
  cidr_blocks = var.sg_cidr_blocks
  security_group_id = aws_security_group.example.id
}

resource "aws_security_group_rule" "egress" {
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.example.id
}