FROM centos:latest
MAINTAINER leaonow@hotmail.com

RUN yum -y install wget \
    openssl \
    tcpdump \
    strace \
    iptraf-ng \
    nmap \
    mtr \
    traceroute
COPY software.txt /opt/
