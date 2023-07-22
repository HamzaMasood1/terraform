## Ec2 Compute module ##

module "instance" {
source               = "./modules/compute"
hostname             = var.hostname
ami_id               = var.ami_id
key_name             = var.key_name
subnet_id            = var.subnet_id
instance_type        = var.instance_type
availability_zone    = var.availability_zone
iam_instance_profile = module.iam_ec2_profile.ec2_instance_profile
security_group_id    = [module.sg.security_group_id]
user_data            = module.templates.ec2_user_data
root_volume_type     = var.root_volume_type
root_volume_size     = var.root_volume_size
os                   = var.os
service_role         = var.service_role  
owner                = var.owner
project              = var.project
release              = var.release
environment          = var.environment
region               = var.region
s3_bucket_name       = module.s3_bucket.s3_bucket_id
iam_role_name        = module.iam_ec2_role.ec2_role_name

}