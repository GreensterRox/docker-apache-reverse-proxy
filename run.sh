#!/bin/bash

echo "ProxyPass $PROXY_GATEWAY $PROXY_DESTINATION" >> /etc/httpd/conf/httpd.conf
echo "ProxyPassReverse $PROXY_GATEWAY $PROXY_DESTINATION" >> /etc/httpd/conf/httpd.conf

# Start Apache
/usr/sbin/httpd -X