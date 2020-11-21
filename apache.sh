#!/bin/bash

yum install -y httpd
echo "hello netherland" >>/var/www/html/index.html
systemctl restart httpd
