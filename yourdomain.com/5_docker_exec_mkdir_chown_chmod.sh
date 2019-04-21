docker exec -it centos7-systemd-httpd-sclo-php7x-docker_yourdomain.com /bin/sh /root/mkdir_chown_chmod.sh
mkdir -p ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www
echo "<?php phpinfo(); ?>" > ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www/info.php
chown -R 1000:1000 ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com

