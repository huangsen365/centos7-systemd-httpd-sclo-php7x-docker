sh ./0_docker_run_test.sh
sh ./1_docker_cp_default_paths_for_docker_to_volumes.sh
sh ./2_cp_default_path_to_volume_yourdomain.com.sh
sh ./3_docker_stop_and_rm_mycentos.sh
sh ./4_docker_run_centos7-systemd-httpd-sclo-php7x-docker_yourdomain.com.sh
sh ./5_docker_exec_mkdir_chown_chmod.sh
sh ./6_docker_exec_it_bash.sh
cp ../gitpull.php ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www/
cp ../gitpull.sh ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/
#sh ./x_1_docker_stop_and_rm_centos7-systemd-httpd-sclo-php7x-docker_yourdomain.com.sh
#sh ./x_2_rm_default_paths_for_docker.sh
