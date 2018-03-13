FROM ubuntu:16.04

ADD scripts /scripts
RUN chmod +x /scripts/*.sh
RUN ["/scripts/lamp.sh"]

ENTRYPOINT ["/scripts/start.sh"]
CMD [""]

EXPOSE 80 443 3306
