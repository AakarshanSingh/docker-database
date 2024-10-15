#!/bin/bash

COMMAND=$1

if [ "$COMMAND" == "stop" ]; then
  echo "Stopping all services..."
  sudo docker compose -f mongo/docker-compose.yml down
  sudo docker compose -f sql/docker-compose.yml down
else
  case $COMMAND in
  mongo)
    echo "Starting mongo service..."
    sudo docker compose -f mongo/docker-compose.yml up -d
    ;;
  sql)
    echo "Starting sql service..."
    sudo docker compose -f sql/docker-compose.yml up -d
    ;;
  *)
    echo "Unknown service: $COMMAND"
    exit 1
    ;;
  esac
fi
