cd /mnt/config
wget https://raw.githubusercontent.com/grafana/loki/v2.7.0/clients/cmd/promtail/promtail-docker-config.yaml -O promtail-config.yaml
docker run --name promtail -d -v $(pwd):/mnt/config -v /var/log/solana:/var/log/solana grafana/promtail:2.7.0 -config.file=/mnt/config/promtail-config.yaml
