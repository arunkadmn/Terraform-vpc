# Configure the AWS Provider
provider "aws" {
    region     = "us-east-1"
}
resource "aws_vpc" "terraform_vpc_demo" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "terraform_vpc_demo"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.terraform_vpc_demo.id}"
  cidr_block = "190.160.1.0/24"

  tags {
    Name = "subnet1"
  }
}
