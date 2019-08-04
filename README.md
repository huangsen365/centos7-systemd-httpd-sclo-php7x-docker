# centos7-systemd-httpd-sclo-php7x-docker
centos7 systemd httpd sclo php7x docker

# yum install below rpms
nfs-utils
htop
iftop
tmux
unzip
zip
epel-release
telnet
mariadb(mysql)

yum -y install nfs-utils htop iftop tmux unzip zip epel-release telnet mariadb mtr
# make data1 folder
mkdir -p /root/data1
# append below line into /etc/fstab
NAS_SERVER_PATH:/ /root/data1     nfs4    _netdev,noresvport,auto    0       0
# mount it
mount -a
# wget and install docker-ce
https://github.com/huangsen365/install_docker

wget https://github.com/huangsen365/install_docker/archive/master.zip -O /root/data1/install_docker.zip
# wget
wget https://github.com/huangsen365/centos7-systemd-httpd-sclo-php7x-docker/archive/master.zip -O /root/data1/centos7-systemd-httpd-sclo-php7x-docker.zip
# enter scripts folder
cd /root/data1/centos7-systemd-httpd-sclo-php7x-docker-master/yourdomain.com
# run the docker instance
sh tmp.sh

# Get Docker CE for CentOS
https://docs.docker.com/install/linux/docker-ce/centos/
