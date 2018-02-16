#!/bin/bash
# Ask which process to kill
echo Enter a process to kill
read TOKILL
kill $(ps aux | grep $TOKILL | grep -v grep | awk '{ print $2 }')
