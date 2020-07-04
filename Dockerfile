FROM ubuntu:latest
MAINTAINER Giuseppe Vullo giuseppe_vullo@yahoo.it
LABEL Description="A ready-to-run NODE.JS Container"
RUN apt-get update \
    && apt-get install -y build-essential \
    && apt-get install -y curl \
    && apt-get install -y sudo \
    && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && apt-get install -y nodejs \
    && mkdir -p /opt/jsbites
VOLUME /opt/jsbites