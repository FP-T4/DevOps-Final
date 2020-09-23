#! /bin/bash
cd .. 
sudo kubctl apply -f DevOps-Final/
sleep 10
kubctl
rm -r DevOps-Final/
