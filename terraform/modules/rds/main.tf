resource "aws_db_instance" "souce_db_oracle" {
  identifier                = "souce-db-oracle"
  engine                    = "oracle-se2"
  engine_version            = "19.0.0.0"
  instance_class            = "db.t3.micro"
  allocated_storage         = 20
  storage_type              = "gp2"
  username                  = "admin"
  password                  = "admin"
  db_subnet_group_name      = aws_db_subnet_group.souce_db_oracle.name
  skip_final_snapshot       = true
  multi_az                  = false

  tags = {
    Name = "Reservation_info RDS Instance"
  }
}

resource "aws_db_subnet_group" "souce_db_oracle" {
  name       = "soucedb_oracle_subnet_group"
  subnet_ids = [var.private_subnet_rds_id]

  tags = {
    Name = "souce_db_oracle_subnet_group"
  }
}