# Create Internet Gateway
resource "aws_internet_gateway" "sunil_igw" {
  vpc_id = aws_vpc.sunil_vpc.id

  tags = {
    Name = "SunilInternetGateway"
  }
}
