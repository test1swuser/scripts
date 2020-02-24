#!/bin/bash
#Script post-suministro

# Instala un servidor nginx y crea una pagina html

yum install -y epel-release
yum install -y nginx
systemctl start nginx
systemctl enable nginx
#docroot en nginx: /usr/share/nginx/html/index.html
#docroot en apache: /var/www/html/index.html
echo  '<html> <body> <p>El nombre del servidor es: '$(hostname)'</p> <p>Private IP: '$(ip address |grep 'inet.*eth0')'</p></body> </html>'>>/usr/share/nginx/html/index.html
ln -s ../../doc/HTML /usr/share/nginx/html/VSI06
