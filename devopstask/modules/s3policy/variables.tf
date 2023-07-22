## S3 bucket Policy Variables ##
variable "policy"                      {default = ""}
variable "bucket_id"                   {default = ""}
variable "depends"                     {default = [""]}
variable "ec2_role_arn"                {default = ""}
variable "s3_bkt_arn"                  {default = ""}
variable "kms_key_arn"                 {default = ""}

