FROM java:openjdk-8-jre

MAINTAINER CloudSlang

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN cd /opt/ \
  && wget "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-1.0.17/cslang-cli-with-content.tar.gz" \
  && tar xvf cslang-cli-with-content.tar.gz \
  && ln -sf /opt/cslang-cli/bin/cslang /usr/bin/ \
  && rm cslang-cli-with-content.tar.gz

WORKDIR /opt/cslang/cslang-cli/bin/

ENTRYPOINT ["sh","/opt/cslang-cli/bin/cslang"]
