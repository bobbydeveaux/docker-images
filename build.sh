#!/bin/bash

CONTAINER=$1

docker build ./$CONTAINER -t bobbydvo/ukc_$CONTAINER:latest

docker push bobbydvo/ukc_$CONTAINER:latest