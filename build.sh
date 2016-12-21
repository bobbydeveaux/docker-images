#!/bin/bash

CONTAINER=$1

docker build ./$CONTAINER -t bobbydvo/ost_$CONTAINER:latest

#docker push bobbydvo/ost_$CONTAINER:latest