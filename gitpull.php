<?php 

//exec("GIT_DIR=/var/www/www.yourdomain.com/.git git pull", $output);
exec("sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh", $output);


echo '<pre>';
print_r($output);
echo '</pre>';




?>
