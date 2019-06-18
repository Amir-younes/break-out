FROM	oraclelinux:7

MAINTAINER Amir

RUN yum -y install httpd

RUN yum -y install haproxy

ADD cert/ /etc/ssl

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

COPY Breakout-master /var/www/html/Breakout-master

EXPOSE 80

EXPOSE 443

CMD /usr/sbin/httpd -D FOREGROUND

