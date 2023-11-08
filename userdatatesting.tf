
resource "aws_instance" "instance23" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  #subnet_id = aws_subnet.subnetA.id
    user_data       = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install ngnix
              start ngnix
              echo "This is web server1 " > index.html
              EOF


  tags={
    name="instance23"
  }
}
resource "aws_instance" "instance3" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  #subnet_id = aws_subnet.subnetB.id
  tags={
    name ="instance3"
  }
  user_data =<<-EOF
            #!/bin/bash
            apt-get update
            apt-get install ngnix
            echo "this is webserver2" >index.html
            EOF
}
