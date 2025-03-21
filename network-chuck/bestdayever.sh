#!/bin/bash

echo "This is network tutorial script !!" 

# poistional arguments

name=$1

# compliment=$2

# read name to assign and userinput variable 

user=$(whoami)
 
day=$(date)

whereami=$(pwd)

# var="variablename" to assign variable 

echo "Good Morning $name!!"

sleep 1

# sleep time is used to delay time 

echo "You're looking good today $name!!"

sleep 1

echo "You have the best $compliment I've ever seen $name!!"

sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami, Also today is $day "

sleep 1

echo "This machine is up & running from $(uptime)"
