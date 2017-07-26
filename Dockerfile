FROM elasticsearch:2.3.3

RUN /usr/share/elasticsearch/bin/plugin install --batch mobz/elasticsearch-head

COPY docker-healthcheck /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-healthcheck

HEALTHCHECK CMD ["docker-healthcheck"]

