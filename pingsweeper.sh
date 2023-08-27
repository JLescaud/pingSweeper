#!/bin/bash
if [ "$1" == "" ]
then
echo "You forgot to enter an ip address"
# example : ./pingsweeper.sh 192.168.14
echo "Sythax : ./pingsweeper.sh <subnet>"

else
for ip in $(seq 1 254); do
#the & sign is to allow faster
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

