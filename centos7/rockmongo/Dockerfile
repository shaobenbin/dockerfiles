FROM centos
MAINTAINER shaobenbin "shaobenbin@gmail.com"
RUN yum -y update;yum clean all
RUN yum groupinstall -y --skip-broken "Development Tools"
RUN yum -y install git;yum clean all
RUN yum -y install httpd;yum clean all
RUN yum -y install wget;yum clean all
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
RUN yum install -y php56w php56w-opcache php56w-pear php56w-devel
RUN yum install -y openssl-devel
RUN "no\n" | pecl install -f mongo 
RUN echo -e  "\nextension=/usr/lib64/php/modules/mongo.so" >> /etc/php.ini
ENV REFRESHED_AT 2015-10-05
#apache config
COPY httpd.conf /etc/httpd/conf/
#rockmongo download
RUN git clone https://github.com/iwind/rockmongo  && mv rockmongo /etc/mongodb
VOLUME ["/var/www/html"]
#start up
ADD config.php /config.php
ADD startup.sh /startup.sh
RUN chmod -v +x /startup.sh
#ENTRYPOINT ["/startup.sh"]
CMD ["/startup.sh"]
EXPOSE 80
