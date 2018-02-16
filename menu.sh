#!/bin/bash
x=0
while [ $x = 0 ]
do
	clear
	echo "Do you like candies"
	read answer
	
	case "$answer" in
		y)
			echo "you said yes"
			x=1
			;;
		n)
			echo "You said NO"
			x=1
			;;
		*)
			clear 
			echo " That is not an option"
			sleep 3
			;;
	esac
done





