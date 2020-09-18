provider "aws" {
  region = "eu-west-1"
}

resource "aws_db_instance" "default" {
  allocated_storage = 20
  identifier = "petclinic-db"
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "petclinic"
  username = "pc"
  password = "petclinic"
  parameter_group_name = "default.mysql5.7"
}
