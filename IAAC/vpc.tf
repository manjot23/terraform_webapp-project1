resource "aws_vpc" "mainvpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "sampleVPC"

  }
}
resource "aws_subnet" "subnetA" {
  availability_zone = "us-east-1a"
  cidr_block        = "10.1.1.0/24"
  vpc_id            = aws_vpc.mainvpc.id
}
resource "aws_subnet" "subnetB" {
  availability_zone = "us-east-1b"
  cidr_block        = "10.1.2.0/24"
  vpc_id            = aws_vpc.mainvpc.id
}
resource "aws_subnet" "subnet-private-1" {
    vpc_id = "${aws_vpc.mainvpc.id}"
    cidr_block = "10.1.3.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "private-subnet for databass"
    }
}