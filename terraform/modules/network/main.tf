# VPC
resource "aws_vpc" "migration_lab" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "migration_lab"
  }
}

# Subnets
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.migration_lab.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet_rds" {
  vpc_id     = aws_vpc.migration_lab.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet_rds"
  }
}

resource "aws_subnet" "private_subnet_aurora" {
  vpc_id     = aws_vpc.migration_lab.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_subnet_aurora"
  }
}
