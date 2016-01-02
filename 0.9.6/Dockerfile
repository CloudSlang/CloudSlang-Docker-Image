FROM java:openjdk-7-jre

MAINTAINER CloudSlang

RUN apt-get update -y && apt-get install -y python python-pip vim emacs openssh-server git tree

RUN groupadd -r cslang && useradd -r -g cslang cslang

RUN mkdir -p /usr/cslang \
  && cd /usr/cslang \
  && wget "https://github.com/CloudSlang/cloud-slang/releases/download/cloudslang-0.9.6/cslang-cli-with-content.tar.gzip" \
  && tar xvf cslang-cli-with-content.tar.gzip \
  && rm cslang-cli-with-content.tar.gzip

WORKDIR /usr/cslang/cslang/

RUN git clone --no-checkout --no-hardlinks https://github.com/CloudSlang/cloud-slang-content.git \
  && mv cloud-slang-content/.git . \
  && rm -rf cloud-slang-content \
  && git reset --hard HEAD

RUN cd /usr/cslang/cslang/python-lib && pip install -r requirements.txt -t . 

ADD ./start-cslang.sh /usr/local/sbin/start-cslang.sh

RUN chmod +x /usr/local/sbin/start-cslang.sh

RUN echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config \
  && sed -i 's/without-password/yes/g' /etc/ssh/sshd_config \
  && echo "root:cslang" | chpasswd \
  && service ssh restart

EXPOSE 22

WORKDIR /usr/cslang/cslang/bin/

CMD [ "/usr/local/sbin/start-cslang.sh", "-s default"]

