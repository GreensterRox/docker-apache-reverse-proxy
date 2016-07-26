FROM centos:centos7
MAINTAINER GreensterRox

# Install Application Technology
RUN yum -y update
RUN yum install -y httpd wget curl

EXPOSE 80

ADD run.sh /run.sh

ENTRYPOINT ["/run.sh"]