FROM centos/systemd

MAINTAINER "Your Name" <you@example.com>

RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum -y --enablerepo=extras install epel-release centos-release-scl
RUN yum -y install wget nginx
RUN yum -y install httpd
RUN yum -y install scl-utils

RUN yum -y install rh-php71 rh-php71-php rh-php71-php-fpm

#RUN yum clean all
RUN yum makecache fast

RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY php-fpm_9000_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_9000_www.yourdomain.com.conf.bak
COPY php-fpm_9000_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_9000_www.yourdomain.com.conf


EXPOSE 80 443 22
RUN yum -y install vim-enhanced rsync
RUN echo "export HISTSIZE=20000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc

COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh


RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
RUN systemctl enable httpd.service; systemctl enable rh-php71-php-fpm; systemctl disable sshd;

CMD ["/usr/sbin/init"]
