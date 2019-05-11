<?php

$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
print $git_pull_command;
exec($git_pull_command, $output);
echo '<pre>';
print_r($output);
echo '</pre>';

echo "Updated time is " . date("Y/m/d H:i:s") . "<br>";
echo "Today is " . date("l") . "<br>";

echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "</a><br>";
