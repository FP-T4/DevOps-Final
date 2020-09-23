#! /bin/bash
git clone https://github.com/jcbgrub/DevOps-Final.git
cd DevOps-Final/
docker-compose up --build
sudo docker login 
sudo docker-compose push 
cd .. 
sleep 5


