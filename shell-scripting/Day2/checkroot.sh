#!/bin/bash

checkroot()
{
	if [ $(id -u) -eq 0 ]
	then
		return 0
	else
		return 1
	fi
}

checkroot

if [ $? -eq 0 ]
then 
	echo " u are root user "
else
	echo " u are not root "
fi
