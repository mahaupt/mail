FROM alpine

RUN apk update && apk add --no-cache postfix dovecot dovecot-pgsql
ADD ./postfix /etc/postfix
ADD ./sql /etc/postfix/sql
ADD ./dovecot /etc/dovecot
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
EXPOSE 25 587 143 993