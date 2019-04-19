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

yum -y install nfs-utils htop iftop tmux unzip zip epel-release telnet mariadb
# make data1 folder
mkdir -p /root/data1
# append below line into /etc/fstab
NAS_SERVER_PATH:/ /root/data1     nfs4    _netdev,auto    0       0
# wget and install docker-ce
https://github.com/huangsen365/install_docker
# wget
wget https://github.com/huangsen365/centos7-systemd-httpd-sclo-php7x-docker/archive/master.zip -O /root/data1/centos7-systemd-httpd-sclo-php7x-docker.zip


# Get Docker CE for CentOS
https://docs.docker.com/install/linux/docker-ce/centos/
