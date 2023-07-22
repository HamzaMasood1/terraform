## User Data execution ##

data "template_file" "user_data" {
  template = file("${var.user_data}")
  vars = {
    hostname       = var.hostname
    s3_bucket_name = var.s3_bucket_name
    iam_role_name  = var.iam_role_name
    region         = var.region
  }
}

## Compute Resource ##

resource "aws_instance" "dock" {
  ami                     = var.ami_id
  key_name                = var.key_name
  subnet_id               = var.subnet_id
  instance_type           = var.instance_type
  security_groups         = var.security_group_id
  availability_zone       = var.availability_zone
  iam_instance_profile    = var.iam_instance_profile
  user_data               = data.template_file.user_data.rendered
  root_block_device {
    volume_type           = var.root_volume_type
    volume_size           = var.root_volume_size
    delete_on_termination = "true"
  }
  tags = {
    "OS"                  = var.os
    "Role"                = var.service_role
    "Name"                = var.hostname
    "Owner"               = var.owner
    "Project"             = var.project
    "Release"             = var.release
    "Environment"         = var.environment
    "Description"         = "${var.environment}-${var.service_role}"
  }
}

