FROM ubuntu:18.04

MAINTAINER CloudSlang

RUN apt-get update -y && apt-get install -y python python-pip vim emacs openssh-server git tree openjdk-8-jre


RUN touch /etc/apt/sources.list.d/atomrepo.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 \
	&& echo "deb http://ppa.launchpad.net/webupd8team/atom/ubuntu trusty main" >> /etc/apt/sources.list.d/atomrepo.list \
	&& echo "deb-src http://ppa.launchpad.net/webupd8team/atom/ubuntu trusty main" >> /etc/apt/sources.list.d/atomrepo.list

RUN apt-get update -y && apt-get install -y --force-yes x11-apps atom

RUN apm install language-cloudslang

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN mkdir -p /usr/cslang \
  && cd /usr/cslang \
  && wget "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-2.0.5/cslang-cli-with-content.tar.gz" \
  && tar xvf cslang-cli-with-content.tar.gz \
  && rm cslang-cli-with-content.tar.gz

WORKDIR /usr/cslang/cslang-cli/

RUN git clone --no-checkout --no-hardlinks https://github.com/CloudSlang/cloud-slang-content.git \
  && mv cloud-slang-content/.git . \
  && rm -rf cloud-slang-content \
  && git reset --hard HEAD

RUN cd /usr/cslang/cslang-cli/python-lib && pip install lxml jsonpath_ng && pip install -r requirements.txt -t .

ADD ./start-cslang.sh /usr/local/sbin/start-cslang.sh

RUN chmod +x /usr/local/sbin/start-cslang.sh

RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config \
  && sed -i 's/without-password/yes/g' /etc/ssh/sshd_config \
  && echo "root:cslang" | chpasswd \
  && service ssh restart

COPY --from=python:3.8.7 / /

RUN cd /usr/local \
  && chmod -R 755 bin \
  && cd bin \
  && ln -sf python3 python \
  && ./python3 -m pip install lxml jsonpath_ng

RUN ln -s /usr/cslang/cslang-cli/bin/cslang /usr/sbin/cslang

EXPOSE 22

CMD [ "/usr/local/sbin/start-cslang.sh", "-s default"]
