#!/bin/bash

docker build ./nginx -t bobbydvo/ost_nginx:latest
docker build ./php-fpm -t bobbydvo/ost_php-fpm:latest

docker push bobbydvo/ost_nginx:latest
docker push bobbydvo/ost_php-fpm:latest

