#/bin/bash

docker exec consul consul snapshot save /backup/consul_$(date +%Y%m%d).snap

find /data/consul/backup/*.snap -mtime +14 -type f -delete