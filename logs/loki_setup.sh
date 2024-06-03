#start loki proxy
screen -d -m /home/zypl4admin/loki-multi-tenant-proxy/cmd/loki-multi-tenant-proxy/loki-multi-tenant-proxy run --loki-server http://localhost:3100 --port 3101 --auth-config ./auth-config.yaml


#start loki
 systemctl start loki
 systemctl status loki
