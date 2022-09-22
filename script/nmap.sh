#!/bin/bash

echo "Enter the IP of the server:- "

read ip

nmap -A $ip -Pn -oA usr/nmap-res

echo " Result is stored in usr/nmap-res.nmap "
