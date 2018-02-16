#!/bin/bash
Fname=$1
while read record[n]
do

	#echo ${record[$n]} | awk '{ print $2 }'
	echo $n
	directory_checked="${record[0]}"
	echo $directory_checked
	filename[$n]=$( echo ${record[$n]} | awk '{ print $2 }' )
	echo ${filename[$n]}
	echo ${record[$n]}
	let "n+=1"
done <$Fname 
