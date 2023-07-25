#! /bin/bash
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo service httpd start
echo "terraform project1" > /var/www/html/index.html