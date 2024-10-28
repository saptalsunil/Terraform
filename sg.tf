resource "aws_security_group" "web-server-sg" {
  name        = "web-server-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.sunil_vpc.id

  tags = {
    Name = "web-server-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "web-server_ipv4" {
  security_group_id = aws_security_group.web-server-sg.id
  cidr_ipv4         = aws_vpc.sunil_vpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 443
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.web-server-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
