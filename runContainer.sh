#!/usr/bin/env bash

echo "Starting Maven Build"
mvn clean package -DskipTests

sleep 15

echo "Starting creating image"
docker build -t crudappimage .

sleep 15

echo "create docker bridge network"
docker network create springboot-crud-network

sleep 2

echo "Starting mysql container"
docker run -d --name db_mysql -e MYSQL_ROOT_PASSWORD=admin123 -e MYSQL_DATABASE=user_management --network springboot-crud-network mysql

sleep 1m

echo "Starting crudapp container"
docker run --name crudapp -e RDS_HOSTNAME=db_mysql --network springboot-crud-network crudappimage

