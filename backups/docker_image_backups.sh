docker_image="zypl2registry.azurecr.io/spitamen-scor-api:latest"
image_name=$(echo $docker_image | cut -d "/" -f 2 | cut -d ":" -f 1)


docker pull $docker_image
docker save -o /home/zypl4admin/docker_images/$image_name.tar $docker_image