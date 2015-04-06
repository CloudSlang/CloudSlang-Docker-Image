FROM java:openjdk-7-jre

MAINTAINER Meir Wahnon

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN apt-get install unzip \
  && mkdir -p /usr/cslang \
  && wget "http://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.7.6/cslang-cli.zip" \
  && unzip cslang-cli.zip \
  && rm cslang-cli.zip \
  && ls

RUN ls

WORKDIR /usr/cslang/cslang/cslang/bin/

RUN ls

CMD ["bash","cslang"]
