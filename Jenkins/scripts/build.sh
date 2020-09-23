#! /bin/bash
git pull
cd DevOps-Final/
docker-compose up --build
sudo docker login 
sudo docker-compose push 



