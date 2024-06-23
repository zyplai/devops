PATH=/bin:/sbin:/usr/bin:/usr/sbin:/root
PATH=$PATH:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin


current_date=$(date +%F)

#Get VM name
export HOST_NAME=$(hostname)
echo $HOST_NAME

#Get container name
mongo_container=$(docker ps | grep mongo-dev | awk '{ print $1 }')
echo $mongo_container

#Create backup
/usr/bin/docker exec -t $mongo_container mongodump -u admin -p pass -o /home/dump
/usr/bin/docker exec -t $mongo_container tar -czvf /home/dump.tar.gz /home/dump
/usr/bin/docker cp $mongo_container:/home/dump.tar.gz /home/zypl4admin/backups/dump.tar.gz
/usr/bin/docker exec -it $mongo_container rm /home/dump.tar.gz


#Create file name
filename="DB_Mongo_${HOST_NAME}_${current_date}.tar.gz"
echo /home/zypl4admin/backups/$filename
mv /home/zypl4admin/backups/dump.tar.gz /home/zypl4admin/backups/$filename


#Upload to Azure
export AZURE_STORAGE_KEY='Ask_devops'
export AZURE_STORAGE_CONNECTION_STRING='Ask_devops'
az storage file upload --account-name zyplbackups --path $HOST_NAME  --share-name dbbackups --source /home/zypl4admin/backups/$filename
rm /home/zypl4admin/backups/$filename


