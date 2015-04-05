FROM java:openjdk-7-jre

MAINTAINER Meir Wahnon

RUN apt-get install unzip \
    && curl -sSL "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.7.6/cslang-cli.zip"  \
    && unzip cslang-cli.zip \
    && rm cslang-cli.zip

