FROM	oraclelinux:7

MAINTAINER Amir

RUN yum -y install httpd

COPY Breakout-master /var/www/html/Breakout-master

EXPOSE 80

CMD /usr/sbin/httpd -D FOREGROUND

