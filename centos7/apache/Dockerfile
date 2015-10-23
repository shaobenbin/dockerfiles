FROM centos
MAINTAINER shaobenbin "shaobenbin@gmail.com"
RUN yum -y update;yum clean all
ENV REFRESHED_AT 2015-10-05
RUN yum -y install httpd;yum clean all


VOLUME ['/var/www/html']
WORKDIR /var/www/html

#RUN rm /etc/httpd/conf/httpd.conf
COPY httpd.conf /etc/httpd/conf/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D","FOREGROUND"]
