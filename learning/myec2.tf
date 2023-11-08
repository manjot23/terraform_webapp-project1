provider "aws" {
  region = "us-west-2"

}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = var.instancetype

} # it will launch t2.large because we have explicityly defined the value in terraform.tf vars which will ignore the default value 
# if you don't defined tfvars file then default will be executed .
#Environment variables are good for linux env but for windows it sometimes doesn't work properly 

