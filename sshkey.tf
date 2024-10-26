resource "aws_key_pair" "sunil" {
  key_name   = "sunilkey"
  public_key = file("/root/.ssh/id_rsa.pub")  # Path to your public key file
}

