## Ec2 Instance Profile Resource ##

resource "aws_iam_instance_profile" "dock_ec2_profile" {
  name = var.ec2_profile_name
  role = var.role
}


