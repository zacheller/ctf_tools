#!/bin/bash
# orig author: sabebarker
# modified by: zacheller

if [ $# != 1 ] ; then
	echo "usage: portscan {ip}"
	echo "output: nmap.txt"
	exit
fi

ports=$(nmap -p- --min-rate 1000 -T4 $1 | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)  
echo "open ports: $ports"
touch "$ports"
nmap -sC -sV -Pn -p $ports $1 -oN nmap.txt
