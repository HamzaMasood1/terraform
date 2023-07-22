## Devops Task Project: ##
This Reposiory contains terraform modules and resources code to provision following resources.
1. RHEL Ec2 instance 
2. Security Group and it's rules (ingress ssh traffic to dock ip only and egress traffic  to internet)
3. IMA Ec2 role, instance profile & corresponding policy with specfic s3 bucket acess & KMS encrypt_decrypt permission to encrypt & decrypt datas from S3 bucket 
4. KMS key creation with policy to allow permission only to the EC2 role to manage and access the key for encrypt & decrypt particular s3 bucket data only
5. S3 bucket with kms key server side encryption enabled with bucket policy with Get, put, list, update and delete access to ec2 role only(step3)
6. Configuration changes will be managed using shell script userdata, which will install docker, s3fs packages and mount s3 bucket to ec2 instance on /opt/s3 dir.

 Note:Data between s3 bucket to Ec2 instace is encrypted at transit & rest with KMS key CMK which ensure that the storage is securely mounted with Ec2 instance, Also s3 bucket policy is restricted only to the ec2 instance provisioned by the module and the Ec2 instance permission has been defined by IAM policy which has been attached to ec2 role with s3 permission(put, get) and kms key permission to encrypt & decrypt. 
 
 ## Architecture diagram: ##
 
![Image of Architecture](https://github.com/HamzaMasood1/devopstask/blob/develop/architecture%20diagram.PNG)

## Description about the Module: ##
        This module has created to provision single RHEL or centos Ec2 instance mounted with external storage S3 bucket with secure manner on your own VPC and subnet.Also this code can be reusable on any environment to provision mentioned aws resources.

       Security features:  
                    * Ec2 SSH ingress access is allowed only to the specfic IP which you can mention the variable 
                    * Ec2 instance permission is restricted only to the s3 bucket created in the module
                    * S3 bucket is encrypted by KMS CMK key and decrypt permission only allowed to the EC2 instance 
                    * KMS key permission is restricted to root account & EC2 role attached to the instance.  
                    * Data between s3 bucket to Ec2 instance is encrypted at rest and transit.  

