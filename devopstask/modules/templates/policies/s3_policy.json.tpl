{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "${ec2_role_arn}"
            },
            "Action": "s3:*",
            "Resource": [
                "${s3_bkt_arn}",
                "${s3_bkt_arn}/*"
            ]
        },
        {
            "Sid": "DenySSE-S3",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:PutObject",
            "Resource": "${s3_bkt_arn}/*",
            "Condition": {
                "StringEquals": {
                    "s3:x-amz-server-side-encryption": "AES256"
                }
            }
        },
        {
            "Sid": "RequireKMSEncryption",
            "Effect": "Deny",
            "Principal": "*",
            "Action": "s3:PutObject",
            "Resource": "${s3_bkt_arn}/*",
            "Condition": {
                "StringNotLikeIfExists": {
                    "s3:x-amz-server-side-encryption-aws-kms-key-id": "${kms_key_arn}"
                }
            }
        }
    ]
}