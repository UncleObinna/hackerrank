#!/bin/bash

# This program explores the utility of the $RANDOM env variable 
# by returning the result of the sum of the user's age and a random number between 0 and 14
# as the age the user will become a millionaire.

echo "What is your name?"
read name

echo "How old are you?"
read age

echo "Calculating....."

sleep 5

# Processing input to calculate whenPersonGoBlow

whenPersonGoBlow=$((( $RANDOM % 15 ) + $age ))

echo "Hello $name, you will become a millionaire when you are $whenPersonGoBlow years old."

