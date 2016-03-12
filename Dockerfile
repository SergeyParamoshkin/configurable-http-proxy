FROM centos:6.6

RUN yum install -y epel-release
RUN yum update -y
RUN yum install -y npm
ADD . /opt/configurable-http-proxy
RUN ln -sf /opt/configurable-http-proxy/bin/configurable-http-proxy /usr/local/bin/configurable-http-proxy
WORKDIR /opt/configurable-http-proxy
RUN npm install

EXPOSE 8000

ENTRYPOINT ["configurable-http-proxy"]
