
data "template_file" "policy" {
  template = file("${var.policy}")
}

resource "aws_iam_role" "dock_role" {
  name               = var.ec2_role_name
  assume_role_policy = data.template_file.policy.rendered
  tags = {
    Name = "var.ec2_role_name"
  }
}
