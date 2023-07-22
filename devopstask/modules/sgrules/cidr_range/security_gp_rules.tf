resource "aws_security_group_rule" "cidr_range_rule" {
  count             = length(var.ip_cidr_range)
  type              = var.type
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  cidr_blocks       = [element(var.ip_cidr_range, count.index)]
  security_group_id = var.security_group_id
  description       = var.description
}



