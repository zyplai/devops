#Get container name
pg_container=$(docker ps | grep postgres | awk '{ print $1 }')

#Create backup
docker exec -it $pg_container pg_dump --no-owner -U zypl -h 127.0.0.1 -p 5432 gulf-postgres -f /home/db.sql
docker cp $pg_container:/home/db.sql /home/zypl4admin/backups/db.sql
docker exec -it $pg_container rm /home/db.sql


#Upload to Azure