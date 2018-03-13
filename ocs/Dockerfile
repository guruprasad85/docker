#Download base image ubuntu 16.04
FROM ubuntu:latest

#COPY setup.sh /setup.sh
#RUN ["/setup.sh"]
ADD scripts /scripts
RUN chmod +x /scripts/*.sh

RUN ["/scripts/start.sh"]


EXPOSE 80 443 3306
