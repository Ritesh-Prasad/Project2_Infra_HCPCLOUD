provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "server" {
    count = 3
  ami = "ami-051a31ab2f4d498f5"
  instance_type = "c7i-flex.large"
  security_groups = "sg-0d9bbcd4e65b3ed2d"
  tags = {
    Name = var.instance_name[count.index]
  }

}

variable "instance_name" {
  default = ["jenkins-Ansible","Tomcat-server1","Tomcat-server2"]
}