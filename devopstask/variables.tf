## Provider variable ##
variable "access_key"                  {default = ""}
variable "secret_key"                  {default = ""}
variable "region"                      {default = ""}

## KMS Key Variables ##
variable "kms_name"                    {default = ""}

## IAM Variables ##
variable "ec2_role_name"               {default = ""}
variable "ec2_profile_name"            {default = ""}
variable "ec2_iam_policy_name"         {default = ""}

## S3 Bucket Variables ##
variable "bucket_name"                 {default = ""}

## Security Group Variables ##
variable "availability_zone"           {default = ""}
variable "security_group_name"         {default = ""}
variable "vpc_id"                      {default = ""}
variable "environment"                 {default = ""}
variable "owner"                       {default = ""}

## security group default variables do not change ##
variable "protocol1"                   {default = "tcp"}
variable "protocol2"                   {default = "udp"}
variable "protocol3"                   {default = "-1"}
variable "direction1"                  {default = "ingress"}
variable "direction2"                  {default = "egress"} 
              
## Security Group Rules variable ##
variable "ingress_ip_cidr_range"       {default = ""}
variable "egress_ip_cidr_range"        {default = ""}

## Ec2 compute variables ##
variable "ami_id"                      {default = ""}
variable "key_name"                    {default = ""}
variable "subnet_id"                   {default = ""}
variable "instance_type"               {default = ""}
variable "hostname"                    {default = ""}

## Root Volume variable ##
variable "root_volume_type"            {default = "gp2"}
variable "root_volume_size"            {default = "30"}

##Inatance tags variables ##
variable "service_role"                {default = ""}
variable "os"                          {default = ""}
variable "project"                     {default = ""}
variable "release"                     {default = ""}
