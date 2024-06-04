module "vpc" {
    source = "./module/vpc"
    vpc_cidr= var.vpc_cidr
    
}

module "subnets" {

    source = "./module/subnets"
    vpc_id =module.vpc.vpc_id
    public_subnet_1 = var.public_subnet_1
    public_subnet_2 = var.public_subnet_2
    private_subnet_1 = var.private_subnet_1
    private_subnet_2 = var.private_subnet_2
    az_1 = var.az_1
    az_2 = var.az_2
}

module "internet_gateway" {

    source = "./module/internet_gateway"
    vpc_id = module.vpc.vpc_id
}

module "security_group" {

    source = "./module/security_group"
    vpc_id = module.vpc.vpc_id
    all_traffic = var.all_traffic
}

module "ec2" {
    source = "./module/ec2"
    ami = var.ami
    key_name = var.key_name
    instance_type = var.instance_type
    security_group_id = module.security_group.security_group_id
    public_subnet_1 = module.subnets.public_subnet_1
    public_subnet_2 = module.subnets.public_subnet_2

}

# module "RDS" {

#     source = "./module/RDS"
#     skr_private_subnet_1 = module.subnets.private_subnet_1
#     skr_private_subnet_2 = module.subnets.private_subnet_2
#     db_security_group_id = module.security_group.db_security_group_id

  
# }

module "route_table" {
    source = "./module/route_table"
    vpc_id = module.vpc.vpc_id
    skr_ig_id = module.internet_gateway.skr_ig_id
    all_traffic = var.all_traffic

}

module "association_route_table" {

    source = "./module/association_route_table"
    public_subnet_1 =module.subnets.public_subnet_1
    public_subnet_2 = module.subnets.public_subnet_2
    private_subnet_1 = module.subnets.private_subnet_1
    private_subnet_2 = module.subnets.private_subnet_2
    skr_public_rt_id = module.route_table.skr_public_rt_id
    skr_private_rt_id = module.route_table.skr_private_rt_id

  
}
module "loadbalancer" {
    source = "./module/loadbalancer"
    public_subnet_1 = module.subnets.public_subnet_1
    public_subnet_2 = module.subnets.public_subnet_2
    vpc_id = module.vpc.vpc_id
    security_group_id = module.security_group.security_group_id
    skr_ubuntu_1 = module.ec2.skr_ubuntu_1
    skr_ubuntu_2 = module.ec2.skr_ubuntu_2

}

