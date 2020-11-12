FROM python:3.7
  
RUN apt-get update \
    && apt-get install -y libxml2-dev libxslt-dev python-dev cron vim \
    && curl -sLO https://github.com/maxmind/geoipupdate/releases/download/v4.5.0/geoipupdate_4.5.0_linux_amd64.deb && dpkg -i geoipupdate_4.5.0_linux_amd64.deb \
    && pip install --use-feature=2020-resolver parsedmarc \
    && rm -rf /root/.cache/ \
    && rm -rf /var/lib/{apt,dpkg}/

COPY parsedmarc.ini /etc/parsedmarc.ini
COPY GeoIP.conf /etc/GeoIP.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh
