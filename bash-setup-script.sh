#!/usr/bin/env bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://mywebsite-nodeapp/index.html /var/www/html/
