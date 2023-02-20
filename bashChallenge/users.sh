#!/bin/bash

#
# Get the number of possible users in the device
#
echo "Number of possible users on the system:	$(cat /etc/passwd | wc -l)"
#
# Get the number of users logged onto the system
#
echo "Number of users logged onto the system:	$(who | wc -l)"
#
# Get the number of running processes
#
echo "Total number of processes running:	$(ps -A | wc -l)"

