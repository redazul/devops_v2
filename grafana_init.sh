#! /bin/bash

sudo apt update
sudo apt upgrade 
sudo apt-get install grafana

#public dashboard + anon login
wget https://raw.githubusercontent.com/redazul/devops_v2/main/grafana.ini -O /etc/grafana/grafana.ini

sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server.service
