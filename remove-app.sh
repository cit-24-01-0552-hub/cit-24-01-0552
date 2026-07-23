#!/bin/bash
echo "Removing app resources ..."

docker stop web-app redis-db 2>/dev/null || true
docker rm web-app redis-db 2>/dev/null || true
docker network rm app-network 2>/dev/null || true
docker volume rm redis_data 2>/dev/null || true
docker rmi my-web-app:latest 2>/dev/null || true

echo "Removed app."
