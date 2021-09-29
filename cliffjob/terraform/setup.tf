provider "aws" {
  region                  = "ap-south-1"
  shared_credentials_file = "/root/.aws/credentials"
  profile                 = "default"
}
resource "aws_instance" "fitsr" {
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  vpc_security_group_ids=["sg-0c47b89c2ced161e2"]
  subnet_id = "subnet-0cda7e5270494f807"
  key_name="cliff"
  tags = {
    Name = "k8smaster"
  }
}
resource "aws_instance" "second" {
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  vpc_security_group_ids=["sg-0c47b89c2ced161e2"]
  subnet_id = "subnet-0cda7e5270494f807"
  key_name="cliff"
  tags = {
    Name = "k8sworker"
  }
}
resource "aws_instance" "third" {
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  vpc_security_group_ids=["sg-0c47b89c2ced161e2"]
  subnet_id = "subnet-0cda7e5270494f807"
  key_name="cliff"
  tags = {
    Name = "jenkins"
  }
}




