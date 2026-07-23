#!/bin/bash
echo "Running app ..."

# Start Redis container
docker run -d \
  --name redis-db \
  --network app-network \
  -p 6379:6379 \
  -v redis_data:/data \
  --restart on-failure \
  redis:alpine redis-server --appendonly yes

# Start Web App container
docker run -d \
  --name web-app \
  --network app-network \
  -p 5000:5000 \
  --restart on-failure \
  my-web-app:latest

echo "The app is available at http://localhost:5000"


