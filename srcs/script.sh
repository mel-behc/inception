
echo "[stop compose build]"

docker compose stop

echo "[delet volumes]"

docker compose down

echo "[delet the images and containers]"

docker system  prune -a