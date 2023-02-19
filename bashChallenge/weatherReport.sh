#!/bin/bash

# This program explores the concept of using shell commands as part of a variable declaration
# I also added a bit of weather information for my location (Abuja)
# v.2 I added a city option and changed the version of wttr to version 1

# Get the IP address from ifconfig.me and print out the first
ip=$(curl -s ifconfig.me | awk '{print $1}')

# Get the city the user lives in
read -p "Where do you live? " city
weather=$(curl -s wttr.in/$city?format=1)

whoami=$(whoami)
whereami=$(pwd)
date=$(date | awk '{print substr ($0, 0, 10)}')

# Print out the user's details
echo "Your IP address is: $ip, you are currently logged in as $whoami, and you are in $whereami directory."
sleep 1
sleep 1
echo "The weather today ($date) is: $weather"
exit 0
