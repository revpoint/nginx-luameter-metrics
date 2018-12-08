FROM python:3-slim

ADD requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

ADD nginx-luameter-metrics /usr/local/bin/

ENTRYPOINT ["nginx-luameter-metrics"]
