PATH=/bin:/sbin:/usr/bin:/usr/sbin:/root
PATH=$PATH:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
db_name=alash


current_date=$(date +%F)

#Get VM name
export HOST_NAME=$(hostname)
echo $HOST_NAME

#Get container name
pg_container=$(docker ps | grep postgres | awk '{ print $1 }')
echo $pg_container


#Create backup
/usr/bin/docker exec -t $pg_container pg_dump --no-owner -U zypl -h 127.0.0.1 -p 5432 $db_name -f /home/db.sql
/usr/bin/docker cp $pg_container:/home/db.sql /home/zypl4admin/backups/db.sql
/usr/bin/docker exec -it $pg_container rm /home/db.sql

#Create file name
filename="DB_Postgres_${HOST_NAME}_${current_date}.sql"
echo /home/zypl4admin/backups/$filename
mv /home/zypl4admin/backups/db.sql /home/zypl4admin/backups/$filename


#Upload to Azure
export AZURE_STORAGE_KEY='Ask_devops'
export AZURE_STORAGE_CONNECTION_STRING='Ask_devops'
az storage file upload --account-name zyplbackups --path $HOST_NAME  --share-name dbbackups --source /home/zypl4admin/backups/$filename
rm /home/zypl4admin/backups/$filename

