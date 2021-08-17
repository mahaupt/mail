FROM alpine

RUN apk update && apk add --no-cache dovecot dovecot-pgsql

ADD ./conf /etc/dovecot
ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
EXPOSE 143 993