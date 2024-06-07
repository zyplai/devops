_____________________________________________________________________________________________
docker compose ls


docker_compose_path="/home/zypl4admin/back-dev/docker-compose.yml"
docker compose -f $docker_compose_path down 
docker compose -f $docker_compose_path up -d

echo $HOST_NAME


___________________________________________________________________________
_____________________________________________________________________________________________
Example

docker compose -f /home/zypl4admin/backend/docker-compose.yml down 
docker compose -f /home/zypl4admin/backend/docker-compose.yml up -d



