#! /bin/bash

docker service create \
	--name pv-web \
	--hostname pv-web \
	--network swarm-net \
	--replicas 1 \
	--publish mode=host,published=80,target=80 \
	--mount type=bind,source=/etc/localtime,target=/etc/localtime \
	--mount type=bind,source=/data/pv/web/config,target=/config \
	--mount type=bind,source=/data/pv/web/logs,target=/var/log/apache2 \
	quickdeploy/pv-counter:1
