## Security Group & Rules Module ##

module "sg" {
  source                  = "./modules/securitygp"
  security_group_name     = var.security_group_name
  vpc_id                  = var.vpc_id
  environment             = var.environment
  description             = "instance security group"
  owner                   = var.owner
}

## ingress traffic allow to dock ip ##
module "ingress_rule1" {
  source                  = "./modules/sgrules/cidr_range"
 ip_cidr_range            = ["${var.ingress_ip_cidr_range}"]
  security_group_id       = module.sg.security_group_id
  type                    = var.direction1
  from_port               = "22"
  to_port                 = "22" 
  protocol                = var.protocol1
  description             = "ssh traffic allow to dock ip"
}

## ingress traffic allow to self sg ##
module "ingress_rule2" {
  source                  = "./modules/sgrules/dest_selfsg"
  security_group_id       = module.sg.security_group_id
  type                    = var.direction1
  from_port               = "22"
  to_port                 = "22" 
  protocol                = var.protocol1
  description             = "ssh traffic allow to self security group"
}

## egress rule allow outbound traffic ##
module "egress_rule1" {
  source                  = "./modules/sgrules/cidr_range"
  ip_cidr_range           = ["${var.egress_ip_cidr_range}"]
  security_group_id       = module.sg.security_group_id
  type                    = var.direction2
  from_port               = "0"
  to_port                 = "0" 
  protocol                = var.protocol3
  description             = "dock instance egress allow all traffic"
}

