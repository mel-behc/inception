
echo "[stop compose build]"

docker compose stop

echo "[delet volumes]"

docker compose down -v

echo "[delet the images and containers]"

docker system  prune -a