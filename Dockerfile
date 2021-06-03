FROM node:14.15.1-buster

LABEL top.ilaipi.node14-buster-pulsar.authors="Billy Yang mz.yyam@gmail.com"

ARG PULSAR_VERSION

ADD https://mirrors.bfsu.edu.cn/apache/pulsar/pulsar-$PULSAR_VERSION/DEB/apache-pulsar-client.deb .
ADD https://mirrors.bfsu.edu.cn/apache/pulsar/pulsar-$PULSAR_VERSION/DEB/apache-pulsar-client-dev.deb .

RUN apt-get install ./apache-pulsar-client*.deb
