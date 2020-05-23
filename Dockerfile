FROM centos:latest
MAINTAINER leaonow@hotmail.com

RUN yum -y install wget \
    openssl \
    tcpdump \
    strace \
    iptraf-ng \
    nmap \
    mtr \
    git \
    traceroute
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin && \
    chmod +x /usr/bin/kubectl
COPY software.txt /opt/
