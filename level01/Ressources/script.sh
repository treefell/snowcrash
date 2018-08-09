#!/bin/sh

echo -n "Please enter snowcrash vms IP address :" 
read ip
scp -P 4242 level01@:/etc/passwd .
