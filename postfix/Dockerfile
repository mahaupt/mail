FROM alpine

RUN apk update && apk add --no-cache postfix postfix-pgsql
ADD ./conf /etc/postfix
ADD ./sql /etc/postfix/sql

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
EXPOSE 25 465 587