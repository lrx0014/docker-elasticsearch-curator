FROM python:alpine

RUN pip install -U --quiet elasticsearch-curator==5.5.4

RUN adduser -D -s /bin/sh curator

RUN chmod -R 777 /certs
RUN chmod -R 777 /etc/es-curator

USER curator

ENTRYPOINT [ "/usr/local/bin/curator" ]
