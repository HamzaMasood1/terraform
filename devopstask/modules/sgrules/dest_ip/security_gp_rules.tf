## Dest Ip based rule creation resourse ##

resource "aws_security_group_rule" "dest_ip_rule" {
  type              = var.type
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  cidr_blocks       = ["var.ip_cidr_range"]
  security_group_id = var.security_group_id
  description       = var.description
}



