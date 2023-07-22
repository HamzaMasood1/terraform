##dest ip Based security group rule ##

variable "security_group_id"     {default = ""}
variable "ip_cidr"               {default = [""]}
variable "type"                  {default = ""}
variable "from_port"             {default = ""}
variable "to_port"               {default = ""}
variable "protocol"              {default = ""}
variable "description"           {default = ""}