module network {
    source = "../../modules/network"
}

module ec2 {
    source = "../../modules/ec2"
    subnet_id = module.network.public_subnet_id
}

module rds {
    source = "../../modules/rds"
    private_subnet_rds_id = module.network.private_subnet_rds_id
}

module aurora {
    source = "../../modules/aurora"
    private_subnet_aurora_id = module.network.private_subnet_aurora_id
}