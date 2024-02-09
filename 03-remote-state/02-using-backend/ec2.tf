resource "aws_instance" "example" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t3.micro"
  associate_public_ip_address = false

  tags = {
    Name = "ubuntu"
  }
}
