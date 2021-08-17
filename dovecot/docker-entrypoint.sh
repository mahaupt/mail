#!/bin/sh

# setup the database configs
sed -i "s/^\(connect\s*=\s*\).*$/\1host=${SQL_HOST} dbname=${SQL_DB} user=${SQL_USER} password=${SQL_PASSWORD}/" /etc/dovecot/dovecot-sql.conf

# fix permissions
chown -R mail:mail /var/vmail
chmod -R g-w /etc/dovecot

#start
dovecot -F