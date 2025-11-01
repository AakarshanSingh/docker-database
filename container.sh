#!/bin/bash

# Check if docker can run without sudo
if docker version > /dev/null 2>&1; then
  DOCKER_CMD="docker compose"
else
  DOCKER_CMD="sudo docker compose"
fi

start_mongo() {
  echo "Starting mongo service..."
  $DOCKER_CMD -f mongo/docker-compose.yml up -d
}

start_postgres() {
  echo "Starting postgres service..."
  $DOCKER_CMD -f sql/postgres/docker-compose.yml up -d
}

start_mysql() {
  echo "Starting mysql service..."
  $DOCKER_CMD -f sql/mysql/docker-compose.yml up -d
}

stop_all() {
  echo "Stopping all services..."
  $DOCKER_CMD -f mongo/docker-compose.yml down
  $DOCKER_CMD -f sql/postgres/docker-compose.yml down
  $DOCKER_CMD -f sql/mysql/docker-compose.yml down
}

echo "Select a database to start:"
echo "1. MongoDB"
echo "2. PostgreSQL"
echo "3. MySQL"
echo "4. Stop all services"
read -p "Enter your choice (1-4): " choice

case $choice in
1)
  start_mongo
  ;;
2)
  start_postgres
  ;;
3)
  start_mysql
  ;;
4)
  stop_all
  ;;
*)
  echo "Invalid choice: $choice"
  exit 1
  ;;
esac
