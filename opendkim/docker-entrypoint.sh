#!/bin/sh
envsubst < /etc/opendkim/template/opendkim.conf > /etc/opendkim/config/opendkim.conf
envsubst < /etc/opendkim/template/KeyTable > /etc/opendkim/config/KeyTable
envsubst < /etc/opendkim/template/SigningTable > /etc/opendkim/config/SigningTable
envsubst < /etc/opendkim/template/TrustedHosts > /etc/opendkim/config/TrustedHosts
exec /usr/sbin/opendkim -f