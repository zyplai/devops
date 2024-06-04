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
#Worker command
docker run -d --rm --name=cadvisor \
  -p 8081:8080 \
  --volume=/var/run:/var/run:ro \
  --volume=/sys:/sys:ro \
  --volume=/var/lib/docker/:/var/lib/docker:ro \
  --volume=/var/run/docker.sock:/var/run/docker.sock:ro \
  gcr.io/cadvisor/cadvisor






docker run -d --rm --name=container-test-3 test-image:v1





