FROM centos/systemd

MAINTAINER "Your Name" <you@example.com>

RUN sed -i 's/tsflags/\#tsflags/g' /etc/yum.conf
RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN yum -y install man-pages man-db man

RUN echo "export HISTSIZE=20000" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc


RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum -y --enablerepo=extras install epel-release centos-release-scl
RUN yum -y install scl-utils
RUN yum -y install bzip2 \
htop \
httpd \
iftop \
logrotate \
mariadb-server \
mod_ssl \
mysql \
nginx \
openssh-clients \
openssh-server \
php \
php-fpm \
php-gd \
php-imap \
php-mbstring \
php-mcrypt \
php-mysql \
php-odbc \
php-pear \
php-pecl-geoip \
php-pecl-memcached \
php-pecl-redis \
php-pgsql \
php-snmp \
php-xml \
php-xmlrpc \
redis \
rsync \
subversion \
telnet \
tmux \
unar \
unzip \
vim-enhanced \
wget \
zip \
zlib-devel


RUN yum -y install rh-php71 rh-php71-php rh-php71-php-fpm
RUN yum -y install rh-php71-php*
RUN yum -y install sclo-php71-php* --exclude=sclo-php71-php-pecl-redis --exclude=sclo-php71-php-smbclient



RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY php-fpm_9000_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_9000_www.yourdomain.com.conf.bak
COPY php-fpm_9000_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_9000_www.yourdomain.com.conf
COPY httpd_9000_www.yourdomain.com.conf /etc/httpd/conf.d/httpd_9000_www.yourdomain.com.conf.bak
COPY httpd_9000_www.yourdomain.com.conf /etc/httpd/conf.d/httpd_9000_www.yourdomain.com.conf



COPY httpd.conf /etc/httpd/conf/httpd.conf
COPY mkdir.sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh


RUN sh /tmp/mkdir.sh
RUN sh /tmp/rsync.sh
RUN systemctl enable httpd.service; systemctl enable rh-php71-php-fpm; systemctl enable sshd

#RUN yum clean all
RUN yum makecache fast

EXPOSE 80 443

CMD ["/usr/sbin/init"]
