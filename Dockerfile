FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

ARG version=0.12.1
ARG download=0.12.1-all-bin

RUN wget https://downloads.apache.org/iotdb/$version/apache-iotdb-$download.zip && \
unzip apache-iotdb-$download.zip && \
mv apache-iotdb-$download iotdb

WORKDIR /opt/sh/iotdb