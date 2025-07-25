#!/bin/sh

set -e

envsubst < /etc/opendkim/template/opendkim.conf > /etc/opendkim/opendkim.conf
envsubst < /etc/opendkim/template/KeyTable > /etc/opendkim/KeyTable
envsubst < /etc/opendkim/template/SigningTable > /etc/opendkim/SigningTable
envsubst < /etc/opendkim/template/TrustedHosts > /etc/opendkim/TrustedHosts

chown opendkim:opendkim /etc/opendkim/keys/mail.private
chmod 600 /etc/opendkim/keys/mail.private