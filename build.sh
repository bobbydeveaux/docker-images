#!/bin/bash

CONTAINER=$1
BUILD_NUMBER=$2

docker build ./$CONTAINER -t bobbydvo/ukc_$CONTAINER:latest
docker tag bobbydvo/ukc_$CONTAINER:latest  bobbydvo/ukc_$CONTAINER:$BUILD_NUMBER

docker push bobbydvo/ukc_$CONTAINER:latest
docker push bobbydvo/ukc_$CONTAINER:$BUILD_NUMBER