#!/bin/bash
#!/bin/bash
set -eux

dnf update -y
dnf install -y httpd curl

if grep -q '^Listen 80$' /etc/httpd/conf/httpd.conf; then
  sed -i 's/^Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf
fi

if grep -q '<VirtualHost \*:80>' /etc/httpd/conf/httpd.conf; then
  sed -i 's/<VirtualHost \*:80>/<VirtualHost *:8080>/' /etc/httpd/conf/httpd.conf
fi

systemctl enable httpd