#! /bin/bash

docker service create \
	--name pv-mysql \
	--hostname pv-mysql \
	--network swarm-net \
	--replicas 1 \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/data/pv/mysql/data,target=/var/lib/mysql \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-e MYSQL_DATABASE=analytics \
	mysql:5.7
