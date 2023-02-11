#!/bin/bash

# This program explores the concept of using shell commands as part of a variable declaration
# I also added a bit of weather information for my location (Abuja) :D

ip=$(ip address | grep enp | grep inet | awk '{print $2}')
weather=$(curl wttr.in Abuja)
whoami=$(whoami)
whereami=$(pwd)
date=$(date)

echo "You are currently logged in as $whoami, and you are in $whereami directory."
sleep 1
echo "Your IP address is: $ip"
sleep 1
echo "The weather today ($date) is: $weather"

exit 0

