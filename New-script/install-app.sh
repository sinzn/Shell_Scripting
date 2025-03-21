#!/bin/bash

<<note
This is package installation script which you wanted $1 and arguments.
note

echo " ** Install application on ubuntu system using arguments ** "

echo $1

echo " ** Installing $1 ** "

sudo apt update && sudo apt upgrade -y

sudo apt install $1 -y

sudo systemctl start $1

sudo systemctl enable $1

echo " ** Installation finished ** "
