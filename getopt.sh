#!/bin/bash
USAGE="usage: $0 -x -y"
while getopts :xy: opt_char
do
	case $opt_char in
		x)
		  echo "option x was called"
		  ;;
		y)
		  echo "option y was called, Arguement called was $OPTARG"
		  ;;
		\?)
		  echo "$OPTARG is not not a valid option"  
		  echo " $USAGE"
		  ;;
	esac
done