FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

ENV IOTDB_HOME /opt/sh/iotdb

ARG version=0.12.3
ARG download=0.12.3-all-bin

RUN wget https://downloads.apache.org/iotdb/$version/apache-iotdb-$download.zip && \
unzip apache-iotdb-$download.zip && \
mv apache-iotdb-$download iotdb && \
rm -rf apache-iotdb-$download.zip

WORKDIR /opt/sh/iotdb