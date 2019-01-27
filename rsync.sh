rsync -av /etc/httpd/ /tmp/default_paths_for_docker/etc/httpd/
rsync -av /etc/nginx/ /tmp/default_paths_for_docker/etc/nginx/
rsync -av /etc/opt/rh/rh-php71/ /tmp/default_paths_for_docker/etc/opt/rh/rh-php71/
rsync -av /etc/php-fpm.d/ /tmp/default_paths_for_docker/etc/php-fpm.d/
rsync -av /home/ /tmp/default_paths_for_docker/home/
rsync -av /root/ /tmp/default_paths_for_docker/root/
rsync -av /var/log/ /tmp/default_paths_for_docker/var/log/
rsync -av /var/www/ /tmp/default_paths_for_docker/var/www/
touch /tmp/default_paths_for_docker/var/www/.keep
rsync -av /var/opt/ /tmp/default_paths_for_docker/var/opt/
touch /tmp/default_paths_for_docker/var/opt/.keep
