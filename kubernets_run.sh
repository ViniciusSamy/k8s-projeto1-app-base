#!/bin/bash

ROOT_PASS=$1

docker build -t someuser/database:V0 \
--build-arg ROOT_PASS=$ROOT_PASS \
./database

sleep 20

docker build -t someuser/backend:V0 \
--build-arg ROOT_PASS=$ROOT_PASS \
--build-arg SERVERNAME=$SERVERNAME_DB \
./backend

echo $SERVERNAME_BACKEND
echo $SERVERNAME_DB