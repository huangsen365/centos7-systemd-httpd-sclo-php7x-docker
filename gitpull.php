<?php

//exec("GIT_DIR=/var/www/www.yourdomain.com/.git git pull", $output);
$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
print $git_pull_command;
exec($git_pull_command, $output);
echo '<pre>';
print_r($output);
echo '</pre>';
