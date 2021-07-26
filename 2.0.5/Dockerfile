FROM ubuntu:18.04

MAINTAINER CloudSlang

RUN apt-get update -y && apt-get install -y vim emacs openssh-server git tree openjdk-8-jre

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN mkdir -p /usr/cslang \
  && cd /usr/cslang \
  && wget "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-2.0.5/cslang-cli-with-content.tar.gz" \
  && tar xvf cslang-cli-with-content.tar.gz \
  && rm cslang-cli-with-content.tar.gz

WORKDIR /usr/cslang/cslang-cli/bin/

COPY --from=python:3.8.7 / /

RUN cd /usr/local \
  && chmod -R 755 bin \
  && cd bin \
  && ln -sf python3 python \
  && ./python3 -m pip install lxml jsonpath_ng

ENTRYPOINT ["sh","cslang"]
