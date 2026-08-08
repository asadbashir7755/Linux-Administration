#!/bin/bash

if [ systemctl is-active --quiet nginx ]
then 
echo "nginx is running"
else 
echo "ngnix is not running"
fi
