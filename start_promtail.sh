#!/bin/bash

wget https://github.com/grafana/loki/releases/download/v2.7.1/promtail-linux-amd64.zip
unzip promtail-linux-amd64.zip
wget https://raw.githubusercontent.com/redazul/devops_v2/main/promtail.yaml
pubID=$(dig +short myip.opendns.com @resolver1.opendns.com)
sed -i "s|- url: http://localhost:3100/loki/api/v1/push|- url: http://$pubID/loki/api/v1/push|g" promtail.yaml
./promtail-linux-amd64 -config.file=promtail.yaml &
