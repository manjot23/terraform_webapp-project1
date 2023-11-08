
provider "aws" {
  region = "us-east-1"
}

/*resource "aws_instance" "instance3" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
 
}

resource "aws_instance" "instance4" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = var.firstvar
 
}*/

/*resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
  force_destroy = true #it will destroy the default vpc as terraform destroy don't destroy default vpc
}
}
resource "aws_subnet" "subnetA"{
   availability_zone = "us-east-1a"
   cidr_block ="10.1.0.0/24"
   vpc_id = aws_vpc.mainvpc.id
   tags={
    Name= "subnet-A"
   }
}*/
## Data resource -to read files from existing resources 
/*data "aws_vpc" "default_vpc"{
   default =true 
}

resource "aws_subnet" "subnet1"{
    vpc_id=data.aws_vpc_default_vpc.id
}*/



