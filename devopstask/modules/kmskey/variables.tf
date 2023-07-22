## KMS key variables ##

variable "kms_name"                    {default = ""}
variable "description"                 {default = ""}
variable "deletion_window_in_days"     {default = ""}
variable "enable_key_rotation"         {default = ""}
variable "policy"                      {default = ""}
variable "ec2_role_arn"                {default = ""}
variable "root_aws_account_id"         {default = ""}