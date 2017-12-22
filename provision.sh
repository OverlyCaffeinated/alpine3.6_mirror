echo -e "\n--- Provisioning Virtual Machine ---\n"

echo -e "\n--- Installing necessary software ---\n"
apk update > /dev/null 2>&1
apk add rsync lighttpd nano iftop > /dev/null 2>&1

echo -e "\n--- Configuring Mirror ---\n"
cp /vagrant/files/alpine-mirror /etc/periodic/hourly/alpine-mirror
chmod +x /etc/periodic/hourly/alpine-mirror
cp /vagrant/files/lighttpd.conf /etc/lighttpd/lighttpd.conf
rc-service lighttpd start
rc-update add lighttpd
cat >> /etc/rsyncd.conf <<EOF

[alpine]
        path = /var/www/localhost/htdocs/alpine
        comment = My Alpine Linux Mirror

EOF
