data "aws_ami" "amazon-linux-2" {
 most_recent = true


 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

}


# Specify 3 availability zones from the region
variable "availability_zones" {
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}



resource "aws_default_vpc" "default" {
  
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  count = 3
  user_data =  file("apache2.sh")
  availability_zone = var.availability_zones[count.index]
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

 tags = {
    Name = "web - ${count.index +1}"
  }
}