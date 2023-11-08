resource "aws_instance" "instance1" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnetA.id
  user_data     = <<EOF
                     #!/bin/bash
                     apt-get update - y 
                     sudo apt-get intall apache2 -y 
                     sudo apt-get install httpd -y
                     echo "<html><head><title>welcome </title></head></html>" >/var/www/html/index.html
                     systemctl start httpd
                     systemctl enable httpd 
                     EOF

  tags = {
    name = "instance1"
  }
}

resource "aws_instance" "instance2" {
  ami           = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnetB.id
  user_data     = <<EOF
                     #!/bin/bash
                     apt-get update - y 
                     sudo apt-get intall apache2 -y 
                     sudo apt-get install httpd -y
                     echo "<html><head><title>welcome </title></head></html>" >/var/www/html/index.html
                     systemctl start httpd
                     systemctl enable httpd 
                     EOF

  tags = {
    name = "instance2"
  }
}
