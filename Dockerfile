FROM quay.io/pires/docker-elasticsearch-curator:5.5.4

RUN adduser -D -s /bin/sh curator

USER curator

ENTRYPOINT [ "/usr/local/bin/curator" ]
