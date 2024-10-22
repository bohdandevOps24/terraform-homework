

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_size
  key_name = aws_key_pair.deployer.key_name
  count = var.instanceCount
  availability_zone =  var.availability_zone
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

 
}