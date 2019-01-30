chown -R sshuser:sshuser /home/sshuser

mkdir /var/opt/rh/rh-php71/lib/php/session/www.yourdomain.com
#chown -R root:apache /var/opt/rh/rh-php71/lib/php/session/www.yourdomain.com
chmod 770 /var/opt/rh/rh-php71/lib/php/session/www.yourdomain.com

mkdir /var/opt/rh/rh-php71/lib/php/wsdlcache/www.yourdomain.com
#chown -R root:apache /var/opt/rh/rh-php71/lib/php/wsdlcache/www.yourdomain.com
chmod 770 /var/opt/rh/rh-php71/lib/php/wsdlcache/www.yourdomain.com

chown -R root:apache /var/opt/rh/rh-php71/lib/php/*

#mkdir /var/www/www.yourdomain.com
#su - sshuser -c 'echo "<?php phpinfo(); ?>" > /var/www/www.yourdomain.com/info.php'
#chown sshuser:sshuser /var/www/www.yourdomain.com
