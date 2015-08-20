FROM java:openjdk-7-jre

MAINTAINER Meir Wahnon

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN mkdir -p /usr/cslang \
  && cd /usr/cslang \
  && wget "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.8.0/cslang-cli-with-content.tar.gz" \
  && tar xvf cslang-cli-with-content.tar.gz \
  && rm cslang-cli-with-content.tar.gz

WORKDIR /usr/cslang/cslang/bin/

ENTRYPOINT ["sh","cslang"]
