#! /bin/bash
cd .. 
pwd
sudo kubctl apply -f DevOps-Final/
kubctl get pods
kubctl get services
kubctl get deployment
sleep 10
kubctl get pods
kubctl get services
kubctl get deployment
sleep 10
kubctl get pods
kubctl get services
kubctl get deployment
