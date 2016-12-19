<?php
echo 'Welcome to your php-fpm Docker container. You should copy your application into the /srv folder and overwrite this file.';
var_dump($_SERVER);

phpinfo();