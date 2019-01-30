docker exec -it centos7-systemd-httpd-sclo-php7x-docker_yourdomain.com /bin/sh /root/mkdir_chown_chmod.sh
mkdir ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com
echo "<?php phpinfo(); ?>" > ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/info.php
chown -R 1000:1000 ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com

