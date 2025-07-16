#!/bin/bash

# .env-File einlesen
set -a
source .env
set +a

docker run --rm -v ./opendkim/keys:/tmp -w /tmp --entrypoint opendkim-genkey \
       instrumentisto/opendkim \
           --subdomains \
           --domain="${MAIL_DOMAIN}" \
           --selector=mail