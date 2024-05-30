docker compose ls
docker compose -f /home/zypl4admin/target/docker-compose.yml down

apt install prometheus-node-exporter \
&& /usr/bin/prometheus-node-exporter --version \
&& service prometheus-node-exporter status



#On Prometheus VM
service prometheus status

service prometheus stop \
&& rm /etc/prometheus/prometheus.yml \
&& vim /etc/prometheus/prometheus.yml \
&& service prometheus start \
&& service prometheus status


#Restart config
service prometheus stop
service prometheus start
service prometheus status

#_____________________________________________________________________
#Setup Cadvisor
# docker run -p 9091:8080 -d gcr.io/cadvisor/cadvisor —name=cadvisor \
# -v /:/rootfs:ro \
# -v /var/run:/var/run:rw \
# -v /sys:/sys:ro \
# -v /var/lib/docker/:/var/lib/docker:ro


