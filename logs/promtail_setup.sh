#install promtail
cat /etc/os-release
#OS Ubuntu 20.04.6 LTS Focal Fossa / Ubuntu 22.04 Jammy Jellifish

cd /usr/local/bin
curl -L -O https://github.com/grafana/loki/releases/download/v2.9.8/promtail-linux-amd64.zip
apt install unzip
unzip promtail-linux-amd64.zip
rm promtail-linux-amd64.zip
chmod a+x "promtail-linux-amd64"


# Setup promtail confing
export HOST_NAME=$(hostname)
echo $HOST_NAME

vim promtail-config-local.yaml
envsubst < promtail-config-local.yaml >> config-promtail.yml
cat config-promtail.yml

#Upload service
useradd --system promtail
vim /etc/systemd/system/promtail.service

#Start serivce
systemctl start promtail
systemctl status promtail



###
systemctl stop promtail



/usr/local/bin/promtail-linux-amd64 -config.file /usr/local/bin/config-promtail.yml -log.level=debug

/usr/local/bin/promtail-linux-amd64 -config.file /usr/local/bin/config-promtail.yml -log.level=debug -config.expand-env=true
