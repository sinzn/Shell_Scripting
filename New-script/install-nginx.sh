#!/bin/bash

<<note
This is install web server script 
note

echo "******** Install nginx **********"

sudo apt update && sudo apt upgrade -y

sudo apt install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

echo "**** web server up and running ***"
