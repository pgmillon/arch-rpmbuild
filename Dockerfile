FROM centos:latest
MAINTAINER pgmillon

RUN yum groupinstall -y "Development Tools"
RUN yum install -y rpmdevtools yum-utils

ADD docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

RUN adduser -g 100 -u 1000 docker

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
