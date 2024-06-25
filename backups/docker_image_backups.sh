docker_image="zypl2registry.azurecr.io/spitamen-scor-api:latest"
image_name=$(echo $docker_image | cut -d "/" -f 2 | cut -d ":" -f 1)
echo $image_name

/usr/bin/docker pull $docker_image
/usr/bin/docker save -o /home/sohibjon/devops/$image_name.tar $docker_image
echo "backup finished"