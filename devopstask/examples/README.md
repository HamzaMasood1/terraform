This read me documents explain about the variables values which need to be poppulated before execution.

## Provider variable ##
variable "access_key"          {default = "your access key"} - AWS Access key value

variable "secret_key"          {default = "your secret key"} - AWS Secret key Value

variable "region"              {default = "AWS region as your own"} - Region name, example - eu-central-1

## KMS Key Variables ##
variable "kms_name"            {default = "any value"} - kms key name, example - dockkms

## IAM Variables ##
variable "ec2_role_name"       {default = "any value"} - EC2 instance role name, example- dock_ec2_role

variable "ec2_profile_name"    {default = "any value"} - instance profile name, example- ec2_profile

variable "ec2_iam_policy_name" {default = "any value"} - iam ec2 policy name, example- dock_ec2_policy

## S3 Bucket Variables ##
variable "bucket_name"         {default = "any value"} - s3 bucket name value you which to create, example - docks3bucket

## Security Group Variables ##
variable "availability_zone"   {default = "your availability zone"} - availability zone were you which to provision ec2 instance, example - eu-central-1a

variable "security_group_name" {default = "any value"} ec2 security group name example - dockec2sg

variable "vpc_id"              {default = "any value"} vpc id to provision security group, example - vpc-ied****

variable "environment"         {default = "any value"} just for tagging purpose example - development 

variable "owner"               {default = "any value"} just for tagging purpose example - development_team

## security group default variables do not change ##
variable "protocol1"                   {default = "tcp"} - variable is defined for tcp port the input to security group rult don't change

variable "protocol2"                   {default = "udp"} - variable is defined for udp port the input security group rule don't change

variable "protocol3"                   {default = "-1"}  - variable is defined for outbound traffic for both TCP& UDP port the input security group rule don't change

variable "direction1"                  {default = "ingress"} - variable is defined for ingress traffic the input security group rule don't change

variable "direction2"                  {default = "egress"} - variable is defined for egress  traffic the input security group rule don't change
              
## Security Group Rules variable ##
variable "ingress_ip_cidr_range"       {default = "40.30.20.10/32"} - ip range to ingress ssh trafic to mentioned ip

variable "egress_ip_cidr_range"        {default = "0.0.0.0/0"} - ip cidr range to egress internet traffic


## Ec2 compute variables ##

variable "ami_id"                      {default = "ami-0badcc5b522737046"} - ami_id to ec2 instance provision (RHEL or CENOS), example - ami-0badcc5b5

variable "key_name"                    {default = "key pair value"} - key pair value to provision ec2 instance, example - demokey pair

variable "subnet_id"                   {default = "subnet id value"} - subnet id value to provision ec2 instance, example - sub-ie122****

variable "instance_type"               {default = "t2.medium"} you can choose your own type(i provided instance type with minimum config 2cpu & 4 GB RAM), example - m3.large

variable "hostname"                    {default = "dockhost"} - ec2 hostname you can provide your own value, example - dockerhost

## Root Volume variable ##
variable "root_volume_type"            {default = "gp2"} - root volume disk type

variable "root_volume_size"            {default = "30"}  - root volume size 

## Inatance tags variables ##

variable "service_role"                {default = "any value "} - ec2 tag value, example - docker_instance

variable "os"                          {default = "RHEL"} - ec2 tag value, example - RHEL , Centos

variable "project"                     {default = "dev"} - ec2 tag value, example - DEVELOPMENT

variable "release"                     {default = "ReleaseA"} - ec2 tag value, example - RELEASE-B, RELEASE-B etc..
