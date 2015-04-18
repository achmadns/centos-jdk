FROM tutum/centos:centos6

MAINTAINER achmad.dev@gmail.com

RUN yum update -y && yum install -y wget

RUN wget --no-cookies \
         --no-check-certificate \
         --header "Cookie: oraclelicense=accept-securebackup-cookie" \
         "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm" \
         -O /var/tmp/jdk-linux-x64.rpm  && \
    rpm -ivh /var/tmp/jdk-linux-x64.rpm && \
    rm -rf /var/tmp/*

ENV JAVA_HOME /usr/java/default