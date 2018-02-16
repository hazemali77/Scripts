#!/bin/bash
PS3="Please select an option:"
select var in a b quit
do
case $var in
	a) echo oprion is A ;;
	b) echo option is B ;;
	quit) exit ;;
	*) echo option is default;;

      		
esac      
done    
~    
