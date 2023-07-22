## Self Security group rule ##

resource "aws_security_group_rule" "dest_selfsg_rule" {
  type              = var.type
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  self              = true
  security_group_id = var.security_group_id
  description       = var.description
}


