FROM debian:jessie

MAINTAINER Meir Wahnon

ADD https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.7.6/cslang-cli.zip cslang/

WORKDIR /cslang/

RUN apt-get install unzip

RUN unzip cslang-cli.zip

RUN ls