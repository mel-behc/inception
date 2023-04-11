
echo "stoping the compose build"
docker compose stop
echo "deleting volumes"
docker compose down -v
echo "deleting the biiuild"
docker system  prune -a
