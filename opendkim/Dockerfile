FROM instrumentisto/opendkim:latest

RUN apt-get update && apt-get install -y gettext-base

COPY config /etc/opendkim/template
COPY run.sh /etc/s6-overlay/s6-rc.d/apply-dropin-files/run.sh
RUN chmod +x /etc/s6-overlay/s6-rc.d/apply-dropin-files/run.sh