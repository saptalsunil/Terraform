resource "aws_instance" "web-server-01" {
  ami           = "ami-012613729b47ae3a8"   # Replace with your desired AMI ID
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.sunil_subnet_1.id    # Replace with your desired subnet ID
  key_name      = aws_key_pair.sunil.key_name          # Replace with your desired key pair name
  tags = {
    Name = "web-server-01"
  }
   vpc_security_group_ids = [aws_security_group.web-server-sg.id]

}

resource "aws_instance" "web-server-02" {
  ami           = "ami-012613729b47ae3a8"   # Replace with your desired AMI ID
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.sunil_subnet_1.id    # Replace with your desired subnet ID
  key_name      = aws_key_pair.sunil.key_name          # Replace with your desired key pair name
  tags = {
    Name = "web-server-02"  
  }  


  # Associate security group with instance
  vpc_security_group_ids = [aws_security_group.web-server-sg.id]

}

 # # Output block for public IP
  output "webserver01_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web-server-01.public_ip
 }

 #Output block for public IP
  output "webserver02_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web-server-02.public_ip
 }



