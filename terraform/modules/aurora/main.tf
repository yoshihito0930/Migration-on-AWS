resource "aws_rds_cluster" "target_db_postgresql" {
    cluster_identifier      = "target-aurora-cluster"
    engine                  = "aurora-postgresql"
    engine_version          = "11.9"  # 具体的なバージョンを指定
    availability_zones      = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
    database_name           = "targetdb"
    master_username         = "admin"
    master_password         = "admin"
    backup_retention_period = 5
    preferred_backup_window = "07:00-09:00"
    db_subnet_group_name    = var.private_subnet_aurora_id  # サブネットグループの指定
    vpc_security_group_ids  = ["sg-12345678"]  # セキュリティグループの指定
    port                    = 5432  # デフォルトのPostgreSQLポート

    skip_final_snapshot = true
    apply_immediately   = true

    tags = {
        Name = "Target Aurora PostgreSQL Cluster"
    }
}