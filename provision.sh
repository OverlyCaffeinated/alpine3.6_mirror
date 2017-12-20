
apk update

apk add rsync

cp /vagrant/alpine-mirror /etc/periodic/hourly/alpine-mirror

chmod +x /etc/periodic/hourly/alpine-mirror

apk add lighttpd

cp /vagrant/lighttpd.conf /etc/lighttpd/lighttpd.conf

rc-service lighttpd start
rc-update add lighttpd

cat >> /etc/rsyncd.conf <<EOF

[alpine]
        path = /var/www/localhost/htdocs/alpine
        comment = My Alpine Linux Mirror

EOF
