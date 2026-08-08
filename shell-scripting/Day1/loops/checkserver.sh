#!/bin/bash
while true
do 
systemctl is-active --quiet nginx || echo "nginx is down"
sleep 10
done
