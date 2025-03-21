#!/bin/bash

echo "This is fight between gabbar and thakur."

<<note
This is fighting script between gabbar and thakur.
note

read -p "Enter Gabbar Dialogue : " gb

read -p "Enter Thakur dialogue : " th

read -p "Kitne aadmi the : " admi

echo "gabbar says, $gb"

echo "thakur says, $th"

echo "total admi : $admi"

if [[ $th == "nahi" ]];
then
	echo "Jai veru entry aur bhasad"
elif [[ $admi -ge 2 ]];

then
       	echo "nahi ladega"

else
	echo "chop chop"
fi

echo " ** Finish ** "  
