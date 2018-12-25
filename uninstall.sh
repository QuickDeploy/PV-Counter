#!/bin/bash

echo 'Warning !'

echo 'It is dangerous to run this script as it would erase all the data'

echo 'Do not run this script unless you absolutely know what will happen'

echo 'You may press Ctrl+C now to abort this script'

echo ''

echo '+Sleep 10'

sleep 10



docker service rm pv-web

docker service rm pv-mysql

docker service rm pv-redis


sleep 5

docker rmi redis:5
docker rmi mysql:5.7
docker rmi quickdeploy/pv-counter:1

echo "All data & services removed !"

echo "use 'rm -rf /data/pv/' to remove all data"