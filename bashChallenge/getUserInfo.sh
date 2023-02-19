#!/bin/bash

# This program accepts users input, stores it in a .dat file, prints out the content of the file, 
# and how many contacts ae currently stored in the file


#
# Create a file that will serve as the database to store the input from the users and assign it to a variable
#
nameDB=names.dat

#
# Get the user's information
#
echo "Please provide the following details:"
echo
read -p "First name: " fname

read -p "Last name: " lname

read -p "Address: " addr

read -p "City: " city

read -p "State: " state

read -p "Zip: " zip
echo

#
# Write the user's details into the database file
#
echo $fname:$lname:$addr:$city:$state:$zip >> $nameDB

#
# Display the current contents of the database
#
(echo; echo "Here are the current contents in the database:"; echo; cat $nameDB) | more

#
# Display how many contacts are in the database
#
echo
echo "There are `cat $nameDB | wc -l` contacts in the database."

exit 0
