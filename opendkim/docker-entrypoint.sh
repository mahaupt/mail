#!/bin/sh
envsubst < /etc/opendkim/template/opendkim.conf > /etc/opendkim/opendkim.conf
envsubst < /etc/opendkim/template/KeyTable > /etc/opendkim/KeyTable
envsubst < /etc/opendkim/template/SigningTable > /etc/opendkim/SigningTable
envsubst < /etc/opendkim/template/TrustedHosts > /etc/opendkim/TrustedHosts

echo ">>> Starte OpenDKIM..."
exec /usr/sbin/opendkim -f -x /etc/opendkim/opendkim.conf