FROM java:openjdk-7-jre

MAINTAINER Meir Wahnon

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN apt-get install unzip \
  && mkdir -p /usr/cslang \
  && cd /usr/cslang \
  && wget "http://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.7.14/cslang-cli.zip" \
  && unzip cslang-cli.zip \
  && rm cslang-cli.zip

WORKDIR /usr/cslang/cslang/cslang/bin/

CMD ["sh","cslang"]
