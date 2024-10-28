# Create Subnet
resource "aws_subnet" "sunil_subnet_1" {
  vpc_id            = aws_vpc.sunil_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"  # Change as needed
  map_public_ip_on_launch = true
  tags = {
    Name = "sunil_subnet_1"
          }
}

resource "aws_subnet" "sunil_subnet_2" {
  vpc_id            = aws_vpc.sunil_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1a"  # Change as needed
  map_public_ip_on_launch = true
  tags = {
    Name = "sunil_subnet_2"
         }
}
