provider "aws" {
region = "us-west-1"
access_key = "AKIAUWJ25SUHCUFIPDVS"
secret_key = "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"
}
resource "aws_instance" "key" {
ami = "ami-0036b4598ccd42565"
instance_type = "t2.micro"
tags={
Name="Instance-1"
}
}

resource "aws_security_group" "sg" {
name ="security"

ingress {
 from_port = 22
 to_port = 22
 protocol = "tcp"
 cidr_blocks = ["0.0.0.0/0"]
}
ingress {
 from_port = 0
 to_port = 0
 protocol = "All"
 cidr_blocks = ["0.0.0.0/0"]
}
}
