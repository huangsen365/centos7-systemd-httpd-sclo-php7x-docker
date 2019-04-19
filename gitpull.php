<?php 

//exec("GIT_DIR=/var/www/www.yourdomain.com/.git git pull", $output);
exec('sh /var/www/www.yourdomain.com/gitpull.sh', $output);


echo '<pre>';
print_r($output);
echo '</pre>';




?>
