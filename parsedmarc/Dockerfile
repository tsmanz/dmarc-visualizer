FROM python:3.7

RUN apt-get update \
    && apt-get install -y libxml2-dev libxslt-dev python-dev \
    && pip install --use-feature=2020-resolver parsedmarc \
    && rm -rf /root/.cache/ \
    && rm -rf /var/lib/{apt,dpkg}/

COPY parsedmarc.ini /
