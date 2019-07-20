#!/bin/bash
read -p "请输入源码包地址:"  d
yum -y install gcc pcre-devel openssl-devel    &>/dev/null
cd $d
./configure  --prefix=/usr/local/nginx  --with-http_ssl_module  &>/dev/null
make  &>/dev/null
make install  &>/dev/null
ln /usr/local/nginx/sbin/nginx  /sbin
nginx
netstat -lptun | grep nginx
