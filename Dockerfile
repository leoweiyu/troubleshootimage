FROM centos:latest
MAINTAINER leaonow@hotmail.com

RUN yum -y update && \
    yum -y install wget \
    openssl \
    tcpdump \
    strace \
    iptraf-ng \
    nmap \
    mtr \
    git \
    jq \
    traceroute
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.17.3/bin/linux/amd64/kubectl && \
    mv kubectl /usr/bin && \
    chmod +x /usr/bin/kubectl && \
    curl -LO https://github.com/tektoncd/cli/releases/download/v0.9.0/tkn_0.9.0_Linux_x86_64.tar.gz && \
    tar -xzvf tkn_0.9.0_Linux_x86_64.tar.gz && \
    rm -rf tkn_0.9.0_Linux_x86_64.tar.gz && \
    mv tkn /usr/bin && \
    chmod +x /usr/bin/tkn
COPY software.txt /opt/
