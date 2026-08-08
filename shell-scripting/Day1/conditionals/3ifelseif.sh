#!/bin/bash

echo "enter role"
read role

if [ "$role" = "user" ]
then
echo "u are login as a user"
elif [ "$role" = "admin" ]
then 
echo "u are login as a admin"
else
echo "check role and try again"
fi
