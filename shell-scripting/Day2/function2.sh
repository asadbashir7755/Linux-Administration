#!/bin/bash

greet()
{
	echo " welcome $1 u are using $(basename $0 ) script "
}

if [ $# -eq 0 ]
	then 
		echo " no argument provided ,provide argument and try again "
fi

greet $1
