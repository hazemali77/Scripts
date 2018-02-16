#!/bin/bash
#Get a name for the set of VMs
echo enter a name of unique user identifier
read FIRSTNAME
grep $FIRSTNAME firstnames && echo $FIRSTNAME is already in use, try again && exit 3
echo $FIRSTNAME >> firstnames
# Copy template files to the target
## MAke sure to check vailable disk space
## May be provide feedback to the user

mkdir /var/lib/libvirt/images/$FIRSTNAME
cp /root/image.qcow2 /var/lib/libvirt/images/$FIRSTNAME && echo image files successfully copied


## Create virtual networks
## Work with etc/lib/libvirt/qemu/networks/defauly as a starting point.
#1. create one bridge
# Copy the file to $firstname
#make sure libvirts knows about the net. bridge
#make sure it has unique ip address
# ensure uniquness
#ip=$(grep 'ip address' * 2>/dev/null | awk -F\' '{ print $2}')
#net=${ip%.*}
cd /etc/libvirt/qemu/networks
grep 'ip address' * 2>/dev/null | awk -F\' '{ print $2}' >> ips

