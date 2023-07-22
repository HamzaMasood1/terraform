## Ec2 compute variables ##

variable "ami_id"                {default = ""}
variable "key_name"              {default = ""}
variable "subnet_id"             {default = ""}
variable "instance_type"         {default = ""}
variable "availability_zone"     {default = ""}
variable "iam_instance_profile"  {default = ""}
variable "security_group_id"     {default = [""]}
variable "user_data"             {default = ""}

## Root Volume variable ##
variable "root_volume_type"      {default = ""}
variable "root_volume_size"      {default = ""}


##Inatance tags variables ##
variable "service_role"          {default = ""}
variable "os"                    {default = ""}
variable "hostname"              {default = ""}
variable "owner"                 {default = ""}
variable "project"               {default = ""}
variable "release"               {default = ""}
variable "environment"           {default = ""}

## Userdata Variables ##

variable "region"               {default = ""}
variable "s3_bucket_name"       {default = ""}
variable "iam_role_name"        {default = ""}
