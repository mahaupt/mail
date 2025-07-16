FROM instrumentisto/opendkim:latest

RUN apk add --no-cache gettext

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
COPY config/* /etc/opendkim/template/
ENTRYPOINT ["/docker-entrypoint.sh"]