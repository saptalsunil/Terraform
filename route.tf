# Create Route Table
resource "aws_route_table" "sunil_route_table" {
  vpc_id = aws_vpc.sunil_vpc.id

  route {
    cidr_block = "0.0.0.0/0"  # Route for internet access
    gateway_id = aws_internet_gateway.sunil_igw.id
  }

  tags = {
    Name = "SunilRouteTable"
  }
}
