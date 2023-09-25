#!/bin/bash

#Simple pingsweep script

echo "Enter the subnet: "
read subnet
echo "Enter the host you gonna start with till host no. 254 in count: "
read host
for ip in $(seq $host 254); do
	ping -c 1 $subnet.$ip
done
