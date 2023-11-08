

# create the rds instance
# terraform aws db instance
resource "aws_db_instance" "db_instance" {
  engine                 = "mysql"
  engine_version         = "8.0.31"
  multi_az               = false
  identifier             = "terraform-rds-instance"
  username               = "manjot"
  password               = "Welcome@123"
  instance_class         = "db.t2.micro"
  allocated_storage      = 20
  availability_zone      = "us-east-1a"
  db_name                = "applicationdb"
  skip_final_snapshot    = true
}