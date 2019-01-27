docker run --privileged --name centos7-systemd-httpd-sclo-php7x-test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d --restart always centos7-systemd-httpd-sclo-php7x
