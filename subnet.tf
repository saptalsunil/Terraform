# Create Subnet
resource "aws_subnet" "sunil_subnet" {
  vpc_id            = aws_vpc.sunil_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"  # Change as needed

  tags = {
    Name = "SunilSubnet"
  }
}
