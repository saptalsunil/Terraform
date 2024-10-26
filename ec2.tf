resource "aws_instance" "sunilEc2" {
  ami           = "ami-012613729b47ae3a8"   # Replace with your desired AMI ID
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.sunil_subnet.id    # Replace with your desired subnet ID
  key_name      = aws_key_pair.sunil.key_name          # Replace with your desired key pair name
}
