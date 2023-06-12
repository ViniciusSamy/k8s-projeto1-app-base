#!/bin/bash

ROOT_PASS=$1

docker build -t someuser/database:V0 \
--build-arg ROOT_PASS=$ROOT_PASS \
./database

docker run -dit --name database someuser/database:V0

SERVERNAME_DB=$( docker inspect database | \
            grep "\"IPAddress\":" --max-count=1 | \
            awk -F\" '{ print $4 }')

sleep 20

docker build -t someuser/backend:V0 \
--build-arg ROOT_PASS=$ROOT_PASS \
--build-arg SERVERNAME=$SERVERNAME_DB \
./backend

docker run -dit --name backend someuser/backend:V0

SERVERNAME_BACKEND=$( docker inspect backend | \
            grep "\"IPAddress\":" --max-count=1 | \
            awk -F\" '{ print $4 }')

echo $SERVERNAME_BACKEND
echo $SERVERNAME_DB