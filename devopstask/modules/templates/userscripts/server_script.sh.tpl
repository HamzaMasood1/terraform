#!/bin/bash

sudo hostnamectl set-hostname "${hostname}"

sudo yum install telnet net-tools wget unzip python3 automake fuse fuse-devel gcc-c++ git libcurl-devel libxml2-devel make openssl-devel -y

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo

sudo dnf install docker-ce --nobest -y

sudo systemctl start docker

sudo systemctl enable docker

sudo wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

sudo yum install epel-release-latest-7.noarch.rpm -y

sudo  yum install s3fs-fuse -y

sudo mkdir -p /opt/s3

sudo s3fs -o iam_role="${iam_role_name}" -o url="https://s3-${region}.amazonaws.com" -o endpoint="${region}" -o dbglevel=info -o curldbg -o allow_other -o multireq_max=5 -o use_cache=/tmp "${s3_bucket_name}" /opt/s3
