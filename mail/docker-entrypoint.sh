#!/bin/sh

# setup the database configs
sed -i "s/^\(user\s*=\s*\).*$/\1${SQL_USER}/" /etc/postfix/sql/*.cf
sed -i "s/^\(password\s*=\s*\).*$/\1${SQL_PASSWORD}/" /etc/postfix/sql/*.cf
sed -i "s/^\(hosts\s*=\s*\).*$/\1${SQL_HOST}/" /etc/postfix/sql/*.cf
sed -i "s/^\(dbname\s*=\s*\).*$/\1${SQL_DB}/" /etc/postfix/sql/*.cf
sed -i "s/^\(connect\s*=\s*\).*$/\1host=${SQL_HOST} dbname=${SQL_DB} user=${SQL_USER} password=${SQL_PASSWORD}/" /etc/dovecot/dovecot-sql.conf

# postfix set domain
sed -i "s/^\(myhostname\s*=\s*\).*$/\1${MAIL_HOSTNAME}/" /etc/postfix/main.cf
sed -i "s/^\(mydomain\s*=\s*\).*$/\1${MAIL_DOMAIN}/" /etc/postfix/main.cf

# fix permissions
chown -R mail:mail /var/vmail
chmod -R g-w /etc/postfix
chmod -R g-w /etc/dovecot

#start postfix
dovecot
postfix start-fg