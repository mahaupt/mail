FROM instrumentisto/opendkim:latest

RUN apt-get update && apt-get install -y gettext-base

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
COPY config/* /etc/opendkim/template/
ENTRYPOINT ["/docker-entrypoint.sh"]