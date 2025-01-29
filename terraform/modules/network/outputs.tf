output "public_subnet_id" {
  description = "The public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_rds_id" {
  description = "The private subnet of rds"
  value       = aws_subnet.private_subnet_rds.id
}

output "private_subnet_aurora_id" {
  description = "The private subnet of aurora"
  value       = aws_subnet.private_subnet_aurora.id
}
