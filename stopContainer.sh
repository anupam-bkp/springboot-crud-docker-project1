#!/usr/bin/env bash

echo "Stopping mysql container"
docker stop db_mysql

sleep 2

echo "Remove mysql container"
docker rm db_mysql

echo "Remove network"
docker network rm springboot-crud-network

echo "Remove already stopped crud app container"
docker rm crudapp

echo "Remove crud app image"
docker rmi crudappimage


