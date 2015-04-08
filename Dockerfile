FROM centos:latest
MAINTAINER pgmillon

RUN yum groupinstall -y "Development Tools"
RUN yum install -y rpmdevtools yum-utils sudo glibc

ADD sudoers /etc/sudoers.d/docker

RUN adduser -g 100 -u 1000 -d /docker docker

USER docker

WORKDIR /docker

CMD ["bash"]
