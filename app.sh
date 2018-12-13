#!/bin/sh


#Starting App

#Starting DB container
docker run --name app-cassandra -d cassandra:lastest

#Starting Backend container
docker build -t app-backend:v1 .
docker run -v /home/lunfaatr/Dockerfiles/quickapp/backend/src:/var/app/src -p 8000:8080 -it app-backend:v1 /bin/sh

#Starting Frontend container
docker build -t app-frontendreact:v1 .
docker run -v /home/lunfaatr/Dockerfiles/quickapp/frontend/src:/var/app/src -p 5000:8080 -it app-frontendreact:v1 /bin/sh


#Starting Message Relay container

#Starting Load Balancer container